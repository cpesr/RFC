Etude sur les vacations/heures complémentaires
================

## Quelques visualisations

On propose ici une première analyse des heures de “vacations” à
l’université. Nous avons collecté les bilans sociaux des
établissements listés ci-dessous sur une période allant de 2005 à 2018.
Le corpus est fragmentaire et nécessite d’être complété, mais constitue
une première base d’analyse. Nous restreignons volontairement l’analyse
à la période 2014-2018 pour avoir suffisament d’établissements.

Liste des établissements :

    ## `summarise()` ungrouping output (override with `.groups` argument)

    ##  [1] "Angers"                      "Bordeaux"                   
    ##  [3] "Bourgogne"                   "Evry"                       
    ##  [5] "Gustave Eiffel - Paris Est"  "Haute Alsace"               
    ##  [7] "La Reunion"                  "La Rochelle"                
    ##  [9] "Le Havre"                    "Le Mans"                    
    ## [11] "Lille"                       "Limoges"                    
    ## [13] "Lorraine"                    "Lyon 1"                     
    ## [15] "Lyon 3"                      "Montpellier"                
    ## [17] "Nantes"                      "Nimes"                      
    ## [19] "Paris 1 - Pantheon Sorbonne" "Paris 3"                    
    ## [21] "Paris Est Creteil"           "Pau"                        
    ## [23] "Reims"                       "Rennes 1"                   
    ## [25] "Savoie Mont-Blanc"           "St Etienne"                 
    ## [27] "Strasbourg"                  "Toulon"                     
    ## [29] "Toulouse 1"                  "Tours"                      
    ## [31] "Univ Artois"

Définitions :

  - Les heures complémentaires sont les heures réalisées par des
    employés de l’établissement (titulaires ou contractuels) au delà de
    leur obligation de service.

  - Les vacations d’enseignement sont les heures d’enseignement
    réalisées par des extérieurs à l’établissement (fonctionnaires ou
    non).

  - Les volumes horaires sont exprimés en Heures équivalent TD (HETD)

Dans la suite, on considère l’ensemble des heures hors service, à savoir
la somme des heures complémentaires et des vacations d’enseignement. Une
analyse plus fine pourra être menée dans un second temps.

## Heures hors service et taille des établissement

On commence par le nb d’heures hors service (=heures complémentaires +
vacations d’enseignement) en fonction du nb de titulaires, en gardant
les data moyen à partir de 2014 et pour chaque établissement.

    ## `summarise()` ungrouping output (override with `.groups` argument)

![](Vacations_files/figure-gfm/hcompPtit-1.png)<!-- -->

On constate graphiquement que les petits établissements font davantage
appel à des heures hors service que les gros.

## Evolution du nb d’heures complémentaires

On continue en regardant la variation (en %) du nombre d’heures hors
service par tous les établissements. Cette variation est obtenue, pour
chaque établissement, en regardant l’écart à la moyenne sur la période
2014-2018. La transparence représente cette valeur moyenne (moins c’est
transparent, plus le nombre d’heures moyen est élevé).

    ## `summarise()` regrouping output by 'Etablissement' (override with `.groups` argument)

![](Vacations_files/figure-gfm/evol.hcomp-1.png)<!-- -->

Une autre visualisation qui ne distingue plus entre les établissements
mais qui montre la tendance à l’augmentation des heures hors service sur
la période. On crée un boxplot qui agrège les données de tous les
établissements.

    ## `summarise()` regrouping output by 'Rentrée' (override with `.groups` argument)

![](Vacations_files/figure-gfm/evol.hcomp.2-1.png)<!-- -->
![](Vacations_files/figure-gfm/evol.hcomp.3-1.png)<!-- -->

## Effet de la taille des établissements

On a constaté (figure 1) qu’il existe deux populations d’établissements,
avec un recours différent aux heures hors service. Est-ce que cette
distinction se traduit également dans l’évolution temporelle observée ?

On commence par séparer les deux populations avec 750 titulaires comme
séparation (choix arbitraire).

![](Vacations_files/figure-gfm/evol.hcomp.taille.1-1.png)<!-- -->

On trace l’évolution pour chacun des groupes sur la période 2014-2018

![](Vacations_files/figure-gfm/evol.hcomp.taille.2-1.png)<!-- -->

![](Vacations_files/figure-gfm/evol.hcomp.taille.3-1.png)<!-- -->

A première vue, on ne voit pas de différences majeures en fonction de la
taille des établissements. Cette analyse doit être confirmée.

## Autres approches

Enfin, on essaie de regarder les trajectoires suivies par les
établissements dans le plan (Heures hors service ; Nb de titulaires)
avec des gradients de transparence pour figurer l’année

![](Vacations_files/figure-gfm/trajectoires-1.png)<!-- -->

## A venir

Analyse différenciée entre les heures complémentaires et les vacations
d’enseignement.

## Crédits

Collecte et mise en forme des données : Antonin Eddi, Florent Figon,
Julien Gossa et Camille Noûs pour CPESR
