Etude sur les vacations/heures complémentaires
================

## Quelques dataviz

On commence par le nb d’heures hors service (=heures complémentaires +
vacations d’enseignement) en fonction du nb de titulaires, en gardant
les data moyen à partir de 2014 et pour chaque établissement.

    ## `summarise()` ungrouping output (override with `.groups` argument)

![](Vacations_files/figure-gfm/hcompPtit-1.png)<!-- -->

On continue en regardant la variation (en %) du nombre d’heures hors
service par tous les établissements. Cette variation est obtenue, pour
chaque établissement, en regardant l’écart à la moyenne sur la période
2014-2018. La transparence représente cette valeur moyenne (moins c’est
transparent, plus le nombre d’heures moyen est élevé)

    ## `summarise()` regrouping output by 'Etablissement' (override with `.groups` argument)

![](Vacations_files/figure-gfm/evol.hcomp-1.png)<!-- -->

Et enfin, on essaie de regarder ces trajectoires dans le plan HComp,Nb
de titulaires avec des gradients de transparence pour figurer l’année

![](Vacations_files/figure-gfm/trajectoires-1.png)<!-- -->
