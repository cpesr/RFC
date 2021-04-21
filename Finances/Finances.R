

fin <- read.csv("fr-esr-operateurs-indicateurs-financiers.csv",sep=";",quote='"') %>%
  mutate(exercice = as.factor(exercice)) %>%
  mutate(groupe = case_when(
    startsWith(groupe,"université") ~ "université",
    groupe == "école d'ingénieurs" ~ "écoles d'ingénieurs",
    str_length(groupe) == 0 ~ "autres établissements d'enseignement et de recherche",
    TRUE ~ groupe
  )) %>%
  mutate(etablissement = case_when(
    str_length(etablissement) == 0 ~ uai...identifiant,
    TRUE ~ etablissement
  )) %>%
  mutate(
    groupe = as.factor(groupe),
    etablissement = as.factor(etablissement))

categories <- read.csv("indicateurs-financiers-categories.csv") 
levels.indicateurs <- categories$Indicateur
levels.categories <- unique(categories$Catégorie)

fin.pivot <- fin %>%
  pivot_longer(
    cols = Acquisitions.d.immobilisations:Valorisation,
    names_to = "Indicateur",
    values_to = "Valeur"
  ) %>%
  merge(categories) %>%
  mutate(
    Indicateur = factor(Indicateur,levels.indicateurs),
    Catégorie = factor(Catégorie,levels.categories)) %>%
  arrange(etablissement,Catégorie,Indicateur,exercice)

fin.pivot.groupe <- fin.pivot %>%
  group_by(groupe,exercice,Catégorie,Indicateur) %>%
  summarise(
    Somme = sum(Valeur, na.rm = TRUE),
    Moyenne = mean(Valeur, na.rm = TRUE)) %>%
  mutate(etablissement="Groupe")

fin.pivot.total <- fin.pivot %>%
  group_by(exercice,Catégorie,Indicateur) %>%
  summarise(
    Somme = sum(Valeur, na.rm = TRUE),
    Moyenne = mean(Valeur, na.rm = TRUE)) %>%
  mutate(groupe="Global", etablissement="Global")
