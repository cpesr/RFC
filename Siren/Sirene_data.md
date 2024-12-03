CPESR
================
CPESR
2024-10-28

## Données

- <https://www.data.gouv.fr/fr/datasets/base-sirene-des-entreprises-et-de-leurs-etablissements-siren-siret/>
  - StockUniteLegale_utf8.csv
  - python3 SireneFilter.py data/SIRENE/StockUniteLegale_utf8.csv
    sirene_enseignement.csv
  - python3 SireneFilter.py data/SIRENE/StockUniteLegale_utf8.csv
    sirene_siren.csv –siren RNCP_SIREN.csv
  - <https://www.sirene.fr/static-resources/documentation/v_sommaire_311.htm#27>
- <https://insee.fr/fr/information/2406147>
- <https://www.insee.fr/fr/information/2028129>

<!-- -->

    ## Joining with `by = join_by(subcode)`
    ## Joining with `by = join_by(siren, statutDiffusionUniteLegale,
    ## unitePurgeeUniteLegale, dateCreationUniteLegale, sigleUniteLegale,
    ## sexeUniteLegale, prenom1UniteLegale, prenom2UniteLegale, prenom3UniteLegale,
    ## prenom4UniteLegale, prenomUsuelUniteLegale, pseudonymeUniteLegale,
    ## identifiantAssociationUniteLegale, trancheEffectifsUniteLegale,
    ## anneeEffectifsUniteLegale, dateDernierTraitementUniteLegale,
    ## nombrePeriodesUniteLegale, categorieEntreprise, anneeCategorieEntreprise,
    ## dateDebut, etatAdministratifUniteLegale, nomUniteLegale, nomUsageUniteLegale,
    ## denominationUniteLegale, denominationUsuelle1UniteLegale,
    ## denominationUsuelle2UniteLegale, denominationUsuelle3UniteLegale,
    ## categorieJuridiqueUniteLegale, activitePrincipaleUniteLegale,
    ## nomenclatureActivitePrincipaleUniteLegale, nicSiegeUniteLegale,
    ## economieSocialeSolidaireUniteLegale, societeMissionUniteLegale,
    ## caractereEmployeurUniteLegale)`

    ## Warning: There was 1 warning in `mutate()`.
    ## ℹ In argument: `across(c(RNCP, Enseignement), replace_na, FALSE)`.
    ## Caused by warning:
    ## ! The `...` argument of `across()` is deprecated as of dplyr 1.1.0.
    ## Supply arguments directly to `.fns` through an anonymous function instead.
    ## 
    ##   # Previously
    ##   across(a:b, mean, na.rm = TRUE)
    ## 
    ##   # Now
    ##   across(a:b, \(x) mean(x, na.rm = TRUE))

## Checks

### Categorie juridique

<details>
<summary>
Catégories juridique non matchées
</summary>

| categorieJuridiqueUniteLegale | Nombre |
|:------------------------------|-------:|
| 5498                          |      1 |
| 5669                          |      1 |
| 5720                          |      1 |
| 7510                          |     13 |
| 7520                          |      1 |

</details>

### RNCP

<details>
<summary>
Siren dans RNCP mais pas dans Sirene
</summary>

| Siren     |
|:----------|
| 708039030 |
| 0         |
| 543962540 |
| NA        |
| 658040640 |
| 565022480 |
| 786265297 |
| 480176877 |
| 384804372 |
| 454241397 |
| 7.752554e |
| 379631241 |
| 379631241 |
| 332775448 |
| 793369018 |
| 809491564 |
| 897442937 |
| 155000052 |
| 379631241 |
| 379631241 |
| 130023718 |
| 852186786 |
| 853216692 |
| 477808769 |
| 534383241 |
| 448796640 |
| 192100239 |
| 495472146 |
| 494472146 |
| 197634712 |
| 882457597 |
| 512420149 |
| 162500290 |
| 578017300 |
| 420347410 |
| 678004250 |
| 678004250 |
| 678004250 |
| 678004250 |
| 678004250 |
| 678004250 |
| 702001180 |
| 888656646 |
| 418058692 |
| 813218506 |
| 608027410 |
| 240824060 |
| 543997790 |
| 598040620 |
| 305405046 |
| 305405047 |
| 305405048 |

</details>
