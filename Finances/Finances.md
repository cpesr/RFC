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

    ## Warning: Removed 908 rows containing missing values (geom_point).

![](Finances_files/figure-gfm/aggreg.grp-1.png)<!-- -->

## Focus Résultat et Solde

    ## Warning: Removed 36 rows containing missing values (geom_point).

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

![](Finances_files/figure-gfm/focus.univ.scsp.ms-1.png)<!-- -->

## Tous les indicateurs par établissement
