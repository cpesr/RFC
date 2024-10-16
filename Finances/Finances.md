RFC Finances
================

Jeu de données :
<https://data.enseignementsup-recherche.gouv.fr/explore/dataset/fr-esr-operateurs-indicateurs-financiers/information/>

Problèmes détectés :

-   `CAF / Acquisitions d’immobilisations` dans le modèle mais absent
    des données
-   `Ressources.propres` dans les données, et
    `Ressources propres encaissables` dans le modèle
-   Nombreux `groupe` et `etablissement` vides

## Tous les indicateurs aggrégés

*Attention* :

-   Il s’agit d’un traitement global, et certaines aggrégation n’ont pas
    de sens. C’est le cas typiquement de la sommes de rapports (du type
    Ressources propres / Produits encaissable).
-   Il y a des changements de périmètre dans les données (des
    établissements entrant ou sortant du périmètre du MESRI, et des
    établissements changeant de groupe).

<!-- -->

    ## Warning: Removed 116 rows containing missing values (geom_point).

![](Finances_files/figure-gfm/aggreg-1.png)<!-- -->

## Tous les indicateurs aggrégés par groupe

    ## Warning: Removed 594 rows containing missing values (geom_point).

![](Finances_files/figure-gfm/aggreg.grp-1.png)<!-- -->

## Focus Résultat et Solde

    ## Warning: Removed 30 rows containing missing values (geom_point).

![](Finances_files/figure-gfm/focus-1.png)<!-- -->

### Focus universités

    ## Warning: Removed 3 rows containing missing values (geom_point).

![](Finances_files/figure-gfm/focus.univ.vs-1.png)<!-- -->

    ## Warning: Removed 3 row(s) containing missing values (geom_path).

    ## Warning: Removed 3 rows containing missing values (geom_point).

![](Finances_files/figure-gfm/focus.univ.top-1.png)<!-- -->

    ## Warning: Removed 1 rows containing missing values (geom_point).

![](Finances_files/figure-gfm/focus.univ.diff.vs-1.png)<!-- -->

### Ressources vs. SCSP vs. Masse salariale

![](Finances_files/figure-gfm/focus.univ.scsp.ms.pfe-1.png)<!-- -->

![](Finances_files/figure-gfm/focus.univ.scsp.ms-1.png)<!-- -->

![](Finances_files/figure-gfm/focus.univ.scsp.ms.diff-1.png)<!-- -->

![](Finances_files/figure-gfm/focus.univ.pfe.ms.diff-1.png)<!-- -->
![](Finances_files/figure-gfm/focus.univ.ms.vs.pfe-1.png)<!-- -->

    ## `geom_smooth()` using formula 'y ~ x'

    ## Warning: Removed 1 rows containing non-finite values (stat_smooth).

    ## Warning: Removed 1 rows containing missing values (geom_point).

    ## Warning: Removed 1 rows containing missing values (geom_text_repel).

    ## Warning: ggrepel: 17 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

![](Finances_files/figure-gfm/focus.univ.taux.vs-1.png)<!-- -->

## Focus Ressources propres formation

    ## Joining, by = c("uai...identifiant", "exercice")
    ## `summarise()` has grouped output by 'exercice'. You can override using the
    ## `.groups` argument.

![](Finances_files/figure-gfm/rpf.plot-1.png)<!-- -->

![](Finances_files/figure-gfm/rpf.plot.norm-1.png)<!-- -->

## Point d’indice

<img src="Finances_files/figure-gfm/pdi-1.png" width="672" />

## Tous les indicateurs par établissement
