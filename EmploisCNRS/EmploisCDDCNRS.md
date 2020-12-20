Emplois CDD CNRS
================

*Ce document est un brouillon de différentes visualisations. Il a
seulement vocation à permettre la discussion. Les observations et
propositions peuvent être ajoutées [en
issues](https://github.com/cpesr/RFC/issues).*

## Description des données

  - Source : <https://emploi.cnrs.fr/Offres.aspx>
  - Nombre d’observations : 483
  - Variables :

<!-- end list -->

    ##  [1] "link"                   "reference"              "title"                 
    ##  [4] "jobLocation"            "datePosted"             "employmentType"        
    ##  [7] "duration.months"        "workHours"              "baseSalary"            
    ## [10] "educationRequirements"  "experienceRequirements"

## Evolution du nombre d’offres de CDD

### Evolution quotidienne

    ## `summarise()` ungrouping output (override with `.groups` argument)

    ## Warning: Removed 6 row(s) containing missing values (geom_path).

![](EmploisCDDCNRS_files/figure-gfm/evolution.quotidienne.nb.offres.1-1.png)<!-- -->

## Durée des CDD

### Durée en fonction du niveau d’étude requis

![](EmploisCDDCNRS_files/figure-gfm/duree.par.niveau.1-1.png)<!-- -->

### Durée en fonction de l’expérience requise

![](EmploisCDDCNRS_files/figure-gfm/duree.par.experience.1-1.png)<!-- -->
