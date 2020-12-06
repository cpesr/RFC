library(dplyr)
library(rvest)
library(magrittr)
library(htmltools)

# on récupère le code html de la page qui liste l'ensemble des offres CDD
cnrs.offres = read_html("https://emploi.cnrs.fr/Offres.aspx")
# on récupère tous les liens du tableau d'offres, et uniquement ceux qui ne sont pas associés à une image (ces derniers sont des doublons de traductions EN/FR)
links.offres = cnrs.offres %>% html_nodes(xpath="//table//a[@itemprop='url']") %>% html_attr("href")

# on récupère la dernière extraction d'offres
data.offres = read.table("DB_CDD_CNRS.csv", h=T, sep=";")

# pour chaque lien qui mène à une fiche de poste CDD, hors contrat doctoral, ...
for (x in 1:length(grep("(^/Offres/CDD).*(aspx$)", links.offres))) {
  # ... on récupère le code html de la fiche de poste
  short.link.offre = links.offres[grep("(^/Offres/CDD).*(aspx$)", links.offres)[x]]
  link.offre = paste("https://emploi.cnrs.fr", short.link.offre, sep="")
  html.offre = read_html(link.offre)
  
  ref = html.offre %>%
    html_nodes(xpath = "//div[@class='OffreDetailMainInfosGenerales']//p") %>%
    html_text() %>%
    strsplit("\r") %>% pluck(1) %>% as.character() %>%
    strsplit(" : ") %>% pluck(2) %>% as.character()
  
  date = html.offre %>% 
    html_nodes(xpath = "//span[@itemprop='datePosted']") %>% 
    html_text()
  
  cat(x, "Référence :", ref, "; date de parution :", date)
  
  # on ne rajoute l'offre que si elle est n'est pas déjà présente dans la BD
  if (ref %in% data.offres$reference & date %in% data.offres$datePosted) {
    cat(" est déjà dans la base de données.\n")
  } else {
    cat (" n'est pas encore dans la base de données ; AJOUT.\n")
    # on récupère les infos contenues dans cette fiche de poste (on supprime à chaque fois les apostrophes pour éviter les problèmes d'import/export) :
    #  - le lien ;
    #  - la référence (codée en dur, il faut donc parser le texte brut) ;
    #  - le titre ;
    #  - la ville ;
    #  - la date de parution de l'offre ;
    #  - si c'est un CDD T/A ou chercheur ;
    #  - la durée en mois (codée là aussi en dur, il faut parser) ;
    #  - si c'est un temps complet ou incomplet ;
    #  - le salaire (attention, il n'y a pas de convention de notation, donc pour l'instant on récupère tout) ;
    #  - le niveau d'étude requis ;
    #  - l'expérience requise (attention, il n'y a pas de convention de notation, donc pour l'instant on récupère tout) ;
    offre = tibble(
      link = gsub("'", " ", link.offre),
      reference = gsub("'", " ", ref),
      title = gsub("'", " ", html.offre %>%
        html_nodes(xpath = "//span[@id='CphH1TitrePage_LblRefOffre']") %>%
        html_text()),
      jobLocation = gsub("'", " ", html.offre %>% 
        html_nodes(xpath = "//span[@itemprop='jobLocation']") %>% 
        html_text()),
      datePosted = gsub("'", " ", date),
      employmentType = gsub("'", " ", html.offre %>% 
        html_nodes(xpath = "//span[@itemprop='employmentType']") %>% 
        html_text()),
      duration.months = gsub("'", " ", html.offre %>%
        html_nodes(xpath = "//div[@class='OffreDetailMainInfosGenerales']//p") %>%
        html_text() %>%
        strsplit("\r") %>% pluck(5) %>% as.character() %>%
        strsplit(" : ") %>% pluck(2) %>% as.character() %>% 
        strsplit(" ") %>% pluck(1) %>% as.character()),
      workHours = gsub("'", " ", html.offre %>% 
        html_nodes(xpath = "//span[@itemprop='workHours']") %>% 
        html_text()),
      baseSalary = gsub("'", " ", html.offre %>% 
        html_nodes(xpath = "//span[@itemprop='baseSalary']") %>% 
        html_text()),
      educationRequirements = gsub("'", " ", html.offre %>% 
        html_nodes(xpath = "//span[@itemprop='educationRequirements']") %>% 
        html_text()),
      experienceRequirements = gsub("'", " ", html.offre %>% 
        html_nodes(xpath = "//span[@itemprop='experienceRequirements']") %>% 
        html_text())
    )
    
    # on conserve la fiche de poste html comme elles disparaissent au fur et à mesure
    download_html(link.offre, file = paste("OffresCDD_HTML/", offre$reference, ".html", sep=""))
    
    data.offres = rbind(offre, data.offres) 
  }
}

write.csv2(data.offres, "DB_CDD_CNRS_20201206.csv", row.names=F)