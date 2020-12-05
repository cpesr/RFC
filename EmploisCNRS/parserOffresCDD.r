library(dplyr)
library(rvest)
library(magrittr)
library(htmltools)

# on récupère le code html de la page qui liste l'ensemble des offres CDD
cnrs.offres = read_html("https://emploi.cnrs.fr/Offres.aspx")
# on récupère tous les liens du tableau d'offre, et uniquement ceux qui ne sont aps associés à une image (ces derniers sont des doublons de traductions EN/FR)
links.offres = cnrs %>% html_nodes(xpath="//table//a[@itemprop='url']") %>% html_attr("href")

# on initiale la data.frame qui contiendra ligne par ligne les offres d'emplois CDD
data.offres = tibble()

# pour chaque lien qui mène à une fiche de poste CDD, hors contrat doctoral...
for (x in 1:length(grep("(^/Offres/CDD).*(aspx$)", links.offres))) {
  # ... on récupère le code html de la fiche de poste
  short.link.offre = links.offres[grep("(^/Offres/CDD).*(aspx$)", links.offres)[x]]
  link.offre = paste("https://emploi.cnrs.fr", short.link.offre, sep="")
  html.offre = read_html(link.offre)
  
  # on récupère les infos contenus dans cette fiche de postes :
  #  1) le lien ;
  #  2) la référence (codée en dur, il faut donc parser le texte brut) ;
  #  3) la ville ;
  #  4) la date de parution de l'offre ;
  #  5) si c'est un CDD T/A ou chercheur ;
  #  6) la durée en mois (codée là aussi en dur, il faut parser) ;
  #  7) si c'est un temps complet ou incomplet ;
  #  8) le salaire (attention, il n'y a pas de convention de notation, donc pour l'instant on récupère tout) ;
  #  9) le niveau d'étude requis ;
  #  10) l'expérience requise (attention, il n'y a pas de convention de notation, donc pour l'instant on récupère tout) ;
  offre = tibble(
    link = link.offre,
    reference = html.offre %>%
      html_nodes(xpath = "//div[@class='OffreDetailMainInfosGenerales']//p") %>%
      html_text() %>%
      strsplit("\r") %>% pluck(1) %>% as.character() %>%
      strsplit(" : ") %>% pluck(2) %>% as.character(),
    jobLocation = html.offre %>% 
      html_nodes(xpath = "//span[@itemprop='jobLocation']") %>% 
      html_text(),
    datePosted = html.offre %>% 
      html_nodes(xpath = "//span[@itemprop='datePosted']") %>% 
      html_text(),
    employmentType = html.offre %>% 
      html_nodes(xpath = "//span[@itemprop='employmentType']") %>% 
      html_text(),
    duration.months = html.offre %>%
      html_nodes(xpath = "//div[@class='OffreDetailMainInfosGenerales']//p") %>%
      html_text() %>%
      strsplit("\r") %>% pluck(5) %>% as.character() %>%
      strsplit(" : ") %>% pluck(2) %>% as.character() %>% 
      strsplit(" ") %>% pluck(1) %>% as.character(),
    workHours = html.offre %>% 
      html_nodes(xpath = "//span[@itemprop='workHours']") %>% 
      html_text(),
    baseSalary = html.offre %>% 
      html_nodes(xpath = "//span[@itemprop='baseSalary']") %>% 
      html_text(),
    educationRequirements = html.offre %>% 
      html_nodes(xpath = "//span[@itemprop='educationRequirements']") %>% 
      html_text(),
    experienceRequirements = html.offre %>% 
      html_nodes(xpath = "//span[@itemprop='experienceRequirements']") %>% 
      html_text()
  )
  
  # on conserve la fiche de poste html comme elles disparaissent au fur et à mesure
  download_html(link.offre, file = paste("OffresCDD_HTML/", offre$reference, ".html", sep=""))
  
  print(link.offre)
  print(offre)
  data.offres = rbind(offre, data.offres)
}

write.csv2(data.offres, "DB_CDD_CNRS_20201205.csv", row.names=F)