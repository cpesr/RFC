library(tidyverse)

fin <- read.csv("../data/fr-esr-operateurs-indicateurs-financiers.csv",sep=";",quote='"') %>% 
  left_join(
    read.csv("../data/fr-esr-principaux-etablissements-enseignement-superieur.csv",sep=";",quote='"') %>%
      mutate(groupe = ifelse(Libellé == "Université de Lorraine", "Université", type.d.établissement)) %>%
      select(uai...identifiant, nom_court, groupe) ) %>%
  mutate(exercice = as.factor(exercice)) %>%
  mutate(etablissement = case_when(
    str_length(Etablissement) == 0 ~ uai...identifiant,
    TRUE ~ Etablissement
  )) %>%
  mutate(
    etablissement = as.factor(etablissement)) %>%
  mutate(
    SCSP = Produits.de.fonctionnement.encaissables - Recettes.propres
  )


categories <- read.csv("../data/indicateurs-financiers-categories.csv") 
levels.indicateurs <- categories$Indicateur
levels.categories <- unique(categories$Catégorie)

fin.pivot <- fin %>%
  pivot_longer(
    cols = all_of(levels.indicateurs),
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
        Ressources.propres...Produits.encaissables = sum(Ressources.propres.encaissables,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE)
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
        Ressources.propres...Produits.encaissables = sum(Ressources.propres.encaissables,na.rm=TRUE) / sum(Produits.de.fonctionnement.encaissables,na.rm=TRUE)
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

