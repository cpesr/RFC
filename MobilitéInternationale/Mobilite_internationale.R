
library(tidyverse)
library(kableExtra)

read.table("fr-esr-sise-effectifs-d-etudiants-inscrits-esr-public.csv",
           header=TRUE, sep=';', quote='"', stringsAsFactors=TRUE, na.strings=c('XX'), nrows=10000) %>%
  group_by(across(starts_with("Mobilité") | starts_with("Attractivité"))) %>%
  summarise(compte = n()) %>%
  ungroup() %>%
  mutate(compte = compte/sum(compte)) %>%
  arrange(desc(compte)) %>%
  write.csv("sise_sample.csv", row.names = FALSE)


sise <- read.table("fr-esr-sise-effectifs-d-etudiants-inscrits-esr-public.csv",
                   header=TRUE, sep=';', quote='"', stringsAsFactors=TRUE, na.strings=c('XX')) %>%
  mutate(Mobilité = 
           # factor(paste0(ATTRAC_NAT_DEP_BAC,ATTRAC_NAT_REG_BAC,ATTRAC_INTERN,MOBILITE_INTERN),
           # levels=c("11FX","11EX","21FX","21EX","22FX","23FX","31FX","32FX","32EX","33FX","33EX","44FX","44FM","44EM","55FX","99FX","99EM"))
           factor(case_when(
             Mobilité.internationale == "Etudiants étrangers en mobilité internationale"
             ~ "Mobilité internationale",
             Attractivité.internationale == "Etudiants de nationalité étrangère issus de systèmes éducatifs étrangers"
             ~ "Nationalité étrangère",
             Attractivité.régionale..région.d.obtention.du.baccalauréat. == "Etranger"
             ~ "Bac à l'étranger",
             TRUE ~ "Aucune"),
             levels = c("Mobilité internationale","Nationalité étrangère","Bac à l'étranger","Aucune")
           )
  ) %>%
  group_by(RENTREE, ETABLISSEMENT, Etablissement, Type.d.établissement, Discipline, Diplôme, DN_DE, Mobilité, CURSUS_LMD, NIVEAU) %>%
  summarise(Effectifs = sum(Nombre.d.étudiants.inscrits..inscriptions.principales..hors.étudiants.inscrits.en.parallèle.en.CPGE)) %>%
  mutate(
    NIVEAU = case_when(
      Diplôme == "Licence professionnelle" ~ 3L,
      TRUE ~ NIVEAU
    ),
    Niveau = factor(paste0(CURSUS_LMD,ifelse(is.na(NIVEAU),"x",NIVEAU)),
                    levels=c("L1","L2","L3","Lx","M1","M2","Mx","Dx")),
    CURSUS_LMD = factor(CURSUS_LMD, levels=c("L","M","D")),
    Rentrée = as.factor(RENTREE)) %>%
  filter(Effectifs != 0) %>%
  write.csv("sise_mobilite.csv", row.names = FALSE)
