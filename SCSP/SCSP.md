SCSP
================
CPESR
2026-01-20

## Données

- <https://github.com/cpesr/kpiESR>

<!-- -->

    ## Joining with `by = join_by(Groupe, pid, Etablissement, Groupe.détaillé,
    ## Comparable)`

<details>

<summary>

Données ( 323 lignes)
</summary>

| Etablissement | Typologie | PerimEx | Indicateur | Valeur100 | Valeur | Rang | Rang_Valeur100 | Rang_Typologie |
|:---|:---|:---|:---|---:|---:|---:|---:|---:|
| Aix-Marseille Université | Université pluridisciplinaire avec santé | IDEx | SCSP | 113.6303 | 5.568901e+08 | 1 | 156 | 1 |
| Aix-Marseille Université | Université pluridisciplinaire avec santé | IDEx | SCSP/E-EC | 105.1323 | 1.285856e+05 | 120 | 256 | 62 |
| Aix-Marseille Université | Université pluridisciplinaire avec santé | IDEx | SCSP/Etudiant | 103.9392 | 8.352934e+03 | 225 | 269 | 113 |
| Aix-Marseille Université | Université pluridisciplinaire avec santé | IDEx | SCSP/Etudiant(hors doc.) | 103.1288 | 8.702496e+03 | 212 | 277 | 105 |
| Aix-Marseille Université | Université pluridisciplinaire avec santé | IDEx | Ressources/Etudiant(hors doc.) | 108.9842 | 1.133521e+04 | 166 | 196 | 81 |
| Avignon Université | Université pluridisciplinaire hors santé | NINI | SCSP | 121.3840 | 5.664792e+07 | 62 | 79 | 15 |

</details>

Téléchargement : [csv](%22fr-cpesr-scsp.csv%22)
[xlsx](%22fr-cpesr-scsp.xlsx%22)

Dans la suite, les données sont limitées aux établissements en France
métropolitaine, sans Paris Sciences et Lettres, dont les indicateurs
sont trop hors-norme.

## SCSP

    ## Warning: The `guide` argument in `scale_*()` cannot be `FALSE`. This was deprecated in
    ## ggplot2 3.3.4.
    ## ℹ Please use "none" instead.
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
    ## generated.

<img src="SCSP_files/figure-gfm/rank.scsp-1.png" width="672" />

<img src="SCSP_files/figure-gfm/val100.scsp-1.png" width="672" />

## SCSP par E-EC

<img src="SCSP_files/figure-gfm/rank.scsp_eec-1.png" width="672" />

<img src="SCSP_files/figure-gfm/val100.scsp_eec-1.png" width="672" />

## SCSP par Etudiant

<img src="SCSP_files/figure-gfm/rank.scsp_etu-1.png" width="672" />

<img src="SCSP_files/figure-gfm/val100.scsp_etu-1.png" width="672" />

## SCSP par Etudiant (hors doctorants)

<img src="SCSP_files/figure-gfm/rank.scsp_etuhd-1.png" width="672" />

<img src="SCSP_files/figure-gfm/val100.scsp_etuhd-1.png" width="672" />

## Ressources par Etudiant (hors doctorants)

<img src="SCSP_files/figure-gfm/rank.scspres_etuhd-1.png" width="672" />

<img src="SCSP_files/figure-gfm/val100.scspres_etuhd-1.png" width="672" />

<img src="SCSP_files/figure-gfm/cmp.typo-1.png" width="672" />

<img src="SCSP_files/figure-gfm/cmp.perimex-1.png" width="672" />

    ## Warning: Groups with fewer than two datapoints have been dropped.
    ## ℹ Set `drop = FALSE` to consider such groups for position adjustment purposes.
    ## Groups with fewer than two datapoints have been dropped.
    ## ℹ Set `drop = FALSE` to consider such groups for position adjustment purposes.

<img src="SCSP_files/figure-gfm/cmp.perimex.typo-1.png" width="672" />

## Rangs

<img src="SCSP_files/figure-gfm/rangs-1.png" width="672" />

<img src="SCSP_files/figure-gfm/rangs.perimex-1.png" width="672" />

<img src="SCSP_files/figure-gfm/rangs.typo-1.png" width="672" />

## SCSP vs. MS

    ## Warning: Using `size` aesthetic for lines was deprecated in ggplot2 3.4.0.
    ## ℹ Please use `linewidth` instead.
    ## This warning is displayed once every 8 hours.
    ## Call `lifecycle::last_lifecycle_warnings()` to see where this warning was
    ## generated.

<img src="SCSP_files/figure-gfm/scsp.vs.ms-1.png" width="672" />

<img src="SCSP_files/figure-gfm/scsp.vs.ms2-1.png" width="672" />

<img src="SCSP_files/figure-gfm/scsp.vs.ms3-1.png" width="672" />

<img src="SCSP_files/figure-gfm/scsp.vs.ms4-1.png" width="672" />

<img src="SCSP_files/figure-gfm/scsp.vs.ms5-1.png" width="672" />

### Autres indicateurs

<img src="SCSP_files/figure-gfm/fdr-1.png" width="672" />

<img src="SCSP_files/figure-gfm/scsp.vs.anr-1.png" width="672" />

<img src="SCSP_files/figure-gfm/deficit-1.png" width="672" />

<img src="SCSP_files/figure-gfm/deficit2-1.png" width="672" />

## SCSCP vs RP

<img src="SCSP_files/figure-gfm/scspvsrp-1.png" width="672" />

## Fix temporaire

<img src="SCSP_files/figure-gfm/unnamed-chunk-1-1.png" width="672" />

<img src="SCSP_files/figure-gfm/unnamed-chunk-2-1.png" width="672" />

<img src="SCSP_files/figure-gfm/unnamed-chunk-3-1.png" width="672" />

    ## Joining with `by = join_by(pid)`

<img src="SCSP_files/figure-gfm/unnamed-chunk-4-1.png" width="672" />

    ## Joining with `by = join_by(pid)`

<img src="SCSP_files/figure-gfm/unnamed-chunk-5-1.png" width="672" />

    ## Joining with `by = join_by(pid)`

<img src="SCSP_files/figure-gfm/unnamed-chunk-6-1.png" width="672" />
