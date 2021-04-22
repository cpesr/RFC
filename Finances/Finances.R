library(tidyverse)

fin <- read.csv("fr-esr-operateurs-indicateurs-financiers.csv",sep=";",quote='"') %>%
  mutate(exercice = as.factor(exercice)) %>%
  mutate(groupe = case_when(
    startsWith(groupe,"université") ~ "université",
    groupe == "école d'ingénieurs" ~ "écoles d'ingénieurs",
    groupe == "communauté d'universités et établissements" ~ "COMUE",
    groupe == "autres établissements d'enseignement et de recherche" ~ "autres",
    str_length(groupe) == 0 ~ "autres",
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
  pivot_longer(
    cols=Somme:Moyenne,
    names_to="Aggrégation",
    values_to="Valeur") %>%
  filter(!
    (Indicateur %in% c("CAF...Produits.encaissables",
                      "Charges.décaissables...Produits.encaissables",
                      "Charges.externes...Produits.encaissables",
                      "Dépenses.de.personnel...Produits.encaissables",
                      "Ressources.propres...Produits.encaissables") &
      Aggrégation == "Somme")) %>%
  bind_rows(
    fin %>%
      group_by(exercice,groupe) %>%
      summarise(
        CAF...Produits.encaissables = sum(Capacité.d.autofinancement,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE),
        Charges.décaissables...Produits.encaissables = sum(Charges.de.fonctionnement.décaissables,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE),
        Charges.externes...Produits.encaissables = sum(Charges.externes,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE),
        Dépenses.de.personnel...Produits.encaissables = sum(Dépenses.de.personnel,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE),
        Ressources.propres...Produits.encaissables = sum(Ressources.propres,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE)
      ) %>%
      pivot_longer(
        cols = -c(exercice,groupe),
        names_to = "Indicateur",
        values_to = "Valeur"
      ) %>%
      mutate(
        Valeur = Valeur * 100,
        Aggrégation = "Somme"
      )
  ) %>%
  mutate(Valeur = na_if(Valeur,0)) %>%
  mutate(etablissement="Groupe") %>%
  mutate(
    Indicateur = factor(Indicateur,levels.indicateurs),
    Catégorie = factor(Catégorie,levels.categories)) %>%
  arrange(etablissement,Catégorie,Indicateur,exercice)
  
fin.pivot.total <- fin.pivot %>%
  group_by(exercice,Catégorie,Indicateur) %>%
  summarise(
    Somme = sum(Valeur, na.rm = TRUE),
    Moyenne = mean(Valeur, na.rm = TRUE)) %>%
  pivot_longer(
    cols=Somme:Moyenne,
    names_to="Aggrégation",
    values_to="Valeur") %>%
  filter(!
           (Indicateur %in% c("CAF...Produits.encaissables",
                              "Charges.décaissables...Produits.encaissables",
                              "Charges.externes...Produits.encaissables",
                              "Dépenses.de.personnel...Produits.encaissables",
                              "Ressources.propres...Produits.encaissables") &
              Aggrégation == "Somme")) %>%
  bind_rows(
    fin %>%
      group_by(exercice) %>%
      summarise(
        CAF...Produits.encaissables = sum(Capacité.d.autofinancement,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE),
        Charges.décaissables...Produits.encaissables = sum(Charges.de.fonctionnement.décaissables,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE),
        Charges.externes...Produits.encaissables = sum(Charges.externes,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE),
        Dépenses.de.personnel...Produits.encaissables = sum(Dépenses.de.personnel,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE),
        Ressources.propres...Produits.encaissables = sum(Ressources.propres,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE)
      ) %>%
      pivot_longer(
        cols = -c(exercice),
        names_to = "Indicateur",
        values_to = "Valeur"
      ) %>%
      mutate(
        Valeur = Valeur * 100,
        Aggrégation = "Somme"
        )
  ) %>%
  mutate(Valeur = na_if(Valeur,0)) %>%
  mutate(groupe="Global", etablissement="Global") %>%
  mutate(
    Indicateur = factor(Indicateur,levels.indicateurs),
    Catégorie = factor(Catégorie,levels.categories)) %>%
  arrange(etablissement,Catégorie,Indicateur,exercice)

