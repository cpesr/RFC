CPESR
================
CPESR
2024-12-10

## Données

- url source

<!-- -->

    ## New names:
    ## New names:
    ## New names:
    ## New names:
    ## New names:
    ## Joining with `by = join_by(UAI, Etablissement, Prime)`
    ## Joining with `by = join_by(UAI, Etablissement, Prime)`
    ## Joining with `by = join_by(UAI, Prime)`
    ## • `` -> `...1`
    ## • `Effectif` -> `Effectif...3`
    ## • `Part de femmes` -> `Part.de.femmes...4`
    ## • `Part de MCF` -> `Part.de.MCF...5`
    ## • `Effectif` -> `Effectif...6`
    ## • `Part de femmes` -> `Part.de.femmes...7`
    ## • `Part de MCF` -> `Part.de.MCF...8`
    ## • `% bénéficiaires parmi les EC` -> `..bénéficiaires.parmi.les.EC`
    ## • `Effectif` -> `Effectif...10`
    ## • `Dont part de MCF` -> `Dont.part.de.MCF...11`
    ## • `Effectif` -> `Effectif...12`
    ## • `Dont part de MCF` -> `Dont.part.de.MCF...13`
    ## • `` -> `...14`
    ## • `` -> `...15`
    ## • `Femme` -> `Femme...16`
    ## • `Homme` -> `Homme...17`
    ## • `` -> `...18`
    ## • `Femme` -> `Femme...19`
    ## • `Homme` -> `Homme...20`
    ## • `` -> `...21`
    ## • `` -> `...22`
    ## • `Femme` -> `Femme...23`
    ## • `Homme` -> `Homme...24`
    ## • `` -> `...25`
    ## • `Femme` -> `Femme...26`
    ## • `Homme` -> `Homme...27`
    ## • `` -> `...28`
    ## • `` -> `...29`

    ## Warning: remplacement de l'importation précédente 'ggthemes::theme_map' par
    ## 'cowplot::theme_map' lors du chargement de 'kpiESR'

    ## Joining with `by = join_by(pid, Etablissement, Groupe, Groupe.détaillé,
    ## Comparable)`

    ##  [1] "UAI"            "Etablissement"  "Prime"          "EC"            
    ##  [5] "Bénéficiaires"  "MontantMoyen"   "Candidats.2022" "Lauréats.2022" 
    ##  [9] "Candidats.2023" "Lauréats.2023"

## Check

<details>
<summary>
Etablissements sans groupe
</summary>

| UAI | Etablissement.x | Groupe |
|:----|:----------------|:-------|

</details>
<details>
<summary>
Groupes et périmètres
</summary>

| Groupe                   | PerimEx | TypeEtablissement |
|:-------------------------|:--------|:------------------|
| Autres établissements    |         | Autres            |
| Ecoles d’ingénieurs      |         | Autres            |
| Ecoles d’ingénieurs      | NA      | Autres            |
| Regroupements            |         | Autres            |
| Universités et assimilés | IDEx    | Univ. IDEx        |
| Universités et assimilés |         | Univ. NINI        |
| Universités et assimilés | ISITE   | Univ. ISITE       |
| Universités et assimilés | NA      | Univ. NINI        |

</details>

## Explorations

    ## Warning: Removed 41 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

<img src="RIPEC_files/figure-gfm/unnamed-chunk-3-1.png" width="672" />

    ## Warning: Removed 7 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

<img src="RIPEC_files/figure-gfm/unnamed-chunk-4-1.png" width="672" />

    ## Warning: Removed 62 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

<img src="RIPEC_files/figure-gfm/unnamed-chunk-5-1.png" width="672" />

    ## Warning: Removed 12 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

<img src="RIPEC_files/figure-gfm/unnamed-chunk-6-1.png" width="672" />

    ## Warning: Removed 8 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

<img src="RIPEC_files/figure-gfm/unnamed-chunk-7-1.png" width="672" />

    ## Warning: Removed 29 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

<img src="RIPEC_files/figure-gfm/unnamed-chunk-8-1.png" width="672" />

    ## Warning: Removed 29 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

<img src="RIPEC_files/figure-gfm/unnamed-chunk-9-1.png" width="672" />

    ## Warning: Removed 22 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 22 rows containing missing values or values outside the scale range
    ## (`geom_text_repel()`).

    ## Warning: ggrepel: 100 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

    ## Warning: ggrepel: 108 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

<img src="RIPEC_files/figure-gfm/unnamed-chunk-10-1.png" width="672" />

    ## Warning: Removed 4 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 4 rows containing missing values or values outside the scale range
    ## (`geom_text_repel()`).

    ## Warning: ggrepel: 55 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

    ## Warning: ggrepel: 57 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

<img src="RIPEC_files/figure-gfm/unnamed-chunk-11-1.png" width="672" />

    ## Warning: Removed 1 row containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 1 row containing missing values or values outside the scale range
    ## (`geom_text_repel()`).

    ## Warning: ggrepel: 51 unlabeled data points (too many overlaps). Consider increasing max.overlaps
    ## ggrepel: 51 unlabeled data points (too many overlaps). Consider increasing max.overlaps

<img src="RIPEC_files/figure-gfm/unnamed-chunk-12-1.png" width="672" />

    ## Warning: Removed 4 rows containing missing values or values outside the scale range
    ## (`geom_col()`).

<img src="RIPEC_files/figure-gfm/unnamed-chunk-13-1.png" width="672" />

<img src="RIPEC_files/figure-gfm/unnamed-chunk-14-1.png" width="672" />

<img src="RIPEC_files/figure-gfm/unnamed-chunk-15-1.png" width="672" />

    ## Warning: Removed 283 rows containing non-finite outside the scale range
    ## (`stat_boxplot()`).

<img src="RIPEC_files/figure-gfm/unnamed-chunk-16-1.png" width="672" />

    ## Warning: Removed 69 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 69 rows containing missing values or values outside the scale range
    ## (`geom_text_repel()`).

    ## Warning: ggrepel: 25 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

<img src="RIPEC_files/figure-gfm/unnamed-chunk-17-1.png" width="672" />

    ## Warning: Removed 67 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 67 rows containing missing values or values outside the scale range
    ## (`geom_text_repel()`).

    ## Warning: ggrepel: 26 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

<img src="RIPEC_files/figure-gfm/unnamed-chunk-18-1.png" width="672" />
