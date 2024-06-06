CPESR
================
CPESR
2024-06-06

## Données

- <https://data.enseignementsup-recherche.gouv.fr/explore/dataset/fr-esr-insertion_professionnelle-master>
- <https://data.enseignementsup-recherche.gouv.fr/explore/dataset/fr-esr-insertion_professionnelle-master_donnees_nationales>

Note : l’absence de Discipline “Ensemble Lettres, langues, arts” est
pénible à gérer

- Taux d’insertion = diplômé en emploi / diplômés sur le marché du
  travail (emploi + chômage, ou taux d’emploi *net*)
- Taux d’emploi = diplômés en emploi / diplômés
- Taux d’emploi salarié en France = diplômés en emploi seulement salarié
  en France / diplômés

Les données sont : diplômés de Masters hors MEEF de la session 2020, à
30 mois.

## Taux d’insertion par domaine

<img src="insertion-pro-tes_files/figure-gfm/tde.dom-1.png" width="672" />

## Taux d’insertion par discipline

<img src="insertion-pro-tes_files/figure-gfm/tde.disc-1.png" width="672" />

Attention : les valeurs sont une moyenne imparfaite.

## Taux d’insertion par secteur disciplinaire

<img src="insertion-pro-tes_files/figure-gfm/tdi.secdisc-1.png" width="672" />

## Différents taux domaine

<img src="insertion-pro-tes_files/figure-gfm/tdx.dom-1.png" width="672" />

<img src="insertion-pro-tes_files/figure-gfm/tdx.dom2-1.png" width="672" />

## Comparaison des différents taux par secteur disciplinaire

    ## Warning: Using `size` aesthetic for lines was deprecated in ggplot2 3.4.0.
    ## ℹ Please use `linewidth` instead.
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
    ## generated.

<img src="insertion-pro-tes_files/figure-gfm/tdx.disc-1.png" width="672" />

<img src="insertion-pro-tes_files/figure-gfm/tdx.disc2-1.png" width="672" />

<img src="insertion-pro-tes_files/figure-gfm/tdx.disc3-1.png" width="672" />

## Comparaison des différents taux par établissement (tri par différence)

<img src="insertion-pro-tes_files/figure-gfm/tds.vs.tip-1.png" width="672" />

## Comparaison des différents taux par établissement (tri par taux d’insertion)

<img src="insertion-pro-tes_files/figure-gfm/tds.vs.tip2-1.png" width="672" />

## Comparaison des différents taux par établissement (tri par taux d’emploi salarié en France)

<img src="insertion-pro-tes_files/figure-gfm/tds.vs.tip3-1.png" width="672" />

## Comparaison différence \[Taux d’emploi salarié en France - Taux d’insertion\] et \[Taux d’emplois extérieurs à la région\]

Attention : Le Taux emplois extérieur à la région est peut-être calculé
sur le taux d’emploi salarié en France

    ## Warning: Removed 1 row containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 1 row containing missing values or values outside the scale range
    ## (`geom_text_repel()`).

    ## Warning: ggrepel: 6 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

<img src="insertion-pro-tes_files/figure-gfm/tds.vs.tip.vs.tee-1.png" width="672" />

    ## Warning: Removed 8 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 8 rows containing missing values or values outside the scale range
    ## (`geom_text_repel()`).

    ## Warning: ggrepel: 21 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

    ## Warning: ggrepel: 9 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

    ## Warning: ggrepel: 6 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

<img src="insertion-pro-tes_files/figure-gfm/tds.vs.tip.vs.tee.dom-1.png" width="960" />

## Comparaison des taux par établissement et domaine

<img src="insertion-pro-tes_files/figure-gfm/tds.vs.tip.dom-1.png" width="672" />

## Université de Lorraine

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.
    ## Scale for shape is already present.
    ## Adding another scale for shape, which will replace the existing scale.

<img src="insertion-pro-tes_files/figure-gfm/lorraine-1.png" width="672" />

<img src="insertion-pro-tes_files/figure-gfm/lorraine2-1.png" width="672" />

## Dispersion

<img src="insertion-pro-tes_files/figure-gfm/disp-1.png" width="672" />

## IP vs socio

    ## Warning: Using an external vector in selections was deprecated in tidyselect 1.1.0.
    ## ℹ Please use `all_of()` or `any_of()` instead.
    ##   # Was:
    ##   data %>% select(variable)
    ## 
    ##   # Now:
    ##   data %>% select(all_of(variable))
    ## 
    ## See <https://tidyselect.r-lib.org/reference/faq-external-vector.html>.
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
    ## generated.

    ## Joining with `by = join_by(Secteur.disciplinaire)`
    ## Joining with `by = join_by(Secteur.disciplinaire)`

    ## 
    ## <details>
    ##   <summary> ipmn miss </summary>
    ## 
    ## 
    ## 
    ## |Secteur.disciplinaire                                   |
    ## |:-------------------------------------------------------|
    ## |Ensemble sciences, technologies et santé                |
    ## |Autres formations juridiques, économiques et de gestion |
    ## |Ensemble Lettres, langues, arts                         |
    ## |Ensemble sciences humaines et sociales                  |
    ## |Histoire-géographie                                     |
    ## |Autres sciences humaines et sociales                    |
    ## 
    ## 
    ## </details>

    ## `geom_smooth()` using formula = 'y ~ x'

    ## Warning: Removed 17 rows containing non-finite outside the scale range
    ## (`stat_smooth()`).

    ## Warning: Removed 17 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 17 rows containing missing values or values outside the scale range
    ## (`geom_text_repel()`).

    ## Warning: ggrepel: 7 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

<img src="insertion-pro-tes_files/figure-gfm/unnamed-chunk-2-1.png" width="672" />

    ## `geom_smooth()` using formula = 'y ~ x'

    ## Warning: Removed 51 rows containing non-finite outside the scale range
    ## (`stat_smooth()`).

    ## Warning: Removed 51 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

<img src="insertion-pro-tes_files/figure-gfm/unnamed-chunk-3-1.png" width="672" />

    ## `geom_smooth()` using formula = 'y ~ x'

    ## Warning: Removed 17 rows containing non-finite outside the scale range
    ## (`stat_smooth()`).

    ## Warning: Removed 17 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

    ## Warning: Removed 17 rows containing missing values or values outside the scale range
    ## (`geom_text_repel()`).

    ## Warning: ggrepel: 9 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

<img src="insertion-pro-tes_files/figure-gfm/unnamed-chunk-4-1.png" width="672" />

    ## `geom_smooth()` using formula = 'y ~ x'

    ## Warning: Removed 51 rows containing non-finite outside the scale range
    ## (`stat_smooth()`).

    ## Warning: Removed 51 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

<img src="insertion-pro-tes_files/figure-gfm/unnamed-chunk-5-1.png" width="672" />

## Taux chômage

    ## `geom_smooth()` using formula = 'y ~ x'

<img src="insertion-pro-tes_files/figure-gfm/unnamed-chunk-6-1.png" width="672" />

    ## Warning: There was 1 warning in `mutate()`.
    ## ℹ In argument: `Code = as.numeric(Code)`.
    ## Caused by warning:
    ## ! NAs introduits lors de la conversion automatique

    ## Warning: There was 1 warning in `mutate()`.
    ## ℹ In argument: `Code = as.numeric(str_sub(Code.département, 2))`.
    ## Caused by warning:
    ## ! NAs introduits lors de la conversion automatique

    ## Joining with `by = join_by(Code)`

    ## Warning in left_join(., chômage): Detected an unexpected many-to-many relationship between `x` and `y`.
    ## ℹ Row 30 of `x` matches multiple rows in `y`.
    ## ℹ Row 70 of `y` matches multiple rows in `x`.
    ## ℹ If a many-to-many relationship is expected, set `relationship =
    ##   "many-to-many"` to silence this warning.

    ## Joining with `by = join_by(pid)`

    ## Warning in left_join(., etab): Detected an unexpected many-to-many relationship between `x` and `y`.
    ## ℹ Row 43 of `x` matches multiple rows in `y`.
    ## ℹ Row 29 of `y` matches multiple rows in `x`.
    ## ℹ If a many-to-many relationship is expected, set `relationship =
    ##   "many-to-many"` to silence this warning.

    ## `geom_smooth()` using formula = 'y ~ x'

    ## Warning: Removed 24 rows containing non-finite outside the scale range
    ## (`stat_smooth()`).

    ## Warning: Removed 24 rows containing missing values or values outside the scale range
    ## (`geom_point()`).

<img src="insertion-pro-tes_files/figure-gfm/unnamed-chunk-7-1.png" width="672" />

    ## Joining with `by = join_by(pid)`

    ## Warning in left_join(., etab): Detected an unexpected many-to-many relationship between `x` and `y`.
    ## ℹ Row 43 of `x` matches multiple rows in `y`.
    ## ℹ Row 29 of `y` matches multiple rows in `x`.
    ## ℹ If a many-to-many relationship is expected, set `relationship =
    ##   "many-to-many"` to silence this warning.

    ## `geom_smooth()` using formula = 'y ~ x'

<img src="insertion-pro-tes_files/figure-gfm/unnamed-chunk-8-1.png" width="672" />
