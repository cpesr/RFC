Taux d’encadrements
================

*Ce document est un brouillon de différentes visualisations. Il a
seulement vocation à permettre la discussion. Les observations et
propositions peuvent être ajoutées [en
issues](https://github.com/cpesr/RFC/issues).*

## Description des données

    ## `summarise()` regrouping output by 'UAI', 'Rentrée' (override with `.groups` argument)

    ## `summarise()` regrouping output by 'UAI', 'Etablissement', 'Type.établissement', 'Rentrée' (override with `.groups` argument)

  - Sources :
      - <https://data.enseignementsup-recherche.gouv.fr/explore/dataset/fr-esr-statistiques-sur-les-effectifs-d-etudiants-inscrits-par-etablissement/export/>
      - <https://data.enseignementsup-recherche.gouv.fr/explore/dataset/fr-esr-enseignants-titulaires-esr-public/table/?disjunctive.annee&q=%22Universit%C3%A9+de+Nantes%22>
  - Nombre d’observations : 3241
  - Variables :

<!-- end list -->

    ## [1] "UAI"                "Rentrée"            "Grande.discipline" 
    ## [4] "Etablissement"      "Type.établissement" "Enseignants"       
    ## [7] "Etudiants"

  - Définitions :
      - `Enseignants` : effectifs enseignants titulaires (EC et 2d
        degré)
      - `Etudiants` : effectifs étudiants (L, M et D)
      - `Taux.d.encadrement` : nombre d’enseignants pour 100 étudiants
        (`Enseignants / Etudiants * 100`)
  - Période : 2010, 2018
  - Limites :
      - les données ne concernent que le MESRI ;
      - les correspondances de disciplines sont imparfaites :
          - la discipline des enseignants est celle du CNU et non de la
            composante (UFR) d’affectation ;
          - la discipline des étudiants est celle de la composante (UFR)
            ;
          - l’imperfection est dûe aux enseignants d’une discipline
            affectés dans une autre, et aux services partagés entre
            plusieurs composantes.
          - les étudiant en STAPS on été classés en ST.

## Taux d’encadrement par type d’établissement

### Evolution globale

    ## `summarise()` regrouping output by 'Rentrée' (override with `.groups` argument)

![](tauxdencadrement_files/figure-gfm/etab.globale-1.png)<!-- -->

    ## [[1]]
    ## List of 13
    ##  $ rect              :List of 5
    ##   ..$ fill         : chr "#FFFFFF"
    ##   ..$ colour       : logi NA
    ##   ..$ size         : NULL
    ##   ..$ linetype     : num 0
    ##   ..$ inherit.blank: logi FALSE
    ##   ..- attr(*, "class")= chr [1:2] "element_rect" "element"
    ##  $ text              :List of 11
    ##   ..$ family       : chr "Raleway"
    ##   ..$ face         : NULL
    ##   ..$ colour       : NULL
    ##   ..$ size         : num 12
    ##   ..$ hjust        : NULL
    ##   ..$ vjust        : NULL
    ##   ..$ angle        : NULL
    ##   ..$ lineheight   : NULL
    ##   ..$ margin       : NULL
    ##   ..$ debug        : NULL
    ##   ..$ inherit.blank: logi FALSE
    ##   ..- attr(*, "class")= chr [1:2] "element_text" "element"
    ##  $ title             :List of 11
    ##   ..$ family       : NULL
    ##   ..$ face         : NULL
    ##   ..$ colour       : NULL
    ##   ..$ size         : NULL
    ##   ..$ hjust        : num 0.5
    ##   ..$ vjust        : NULL
    ##   ..$ angle        : NULL
    ##   ..$ lineheight   : NULL
    ##   ..$ margin       : NULL
    ##   ..$ debug        : NULL
    ##   ..$ inherit.blank: logi FALSE
    ##   ..- attr(*, "class")= chr [1:2] "element_text" "element"
    ##  $ axis.title.x      :List of 11
    ##   ..$ family       : NULL
    ##   ..$ face         : NULL
    ##   ..$ colour       : NULL
    ##   ..$ size         : NULL
    ##   ..$ hjust        : num 0.5
    ##   ..$ vjust        : NULL
    ##   ..$ angle        : NULL
    ##   ..$ lineheight   : NULL
    ##   ..$ margin       : NULL
    ##   ..$ debug        : NULL
    ##   ..$ inherit.blank: logi FALSE
    ##   ..- attr(*, "class")= chr [1:2] "element_text" "element"
    ##  $ axis.title.y      :List of 11
    ##   ..$ family       : NULL
    ##   ..$ face         : NULL
    ##   ..$ colour       : NULL
    ##   ..$ size         : NULL
    ##   ..$ hjust        : num 0.5
    ##   ..$ vjust        : NULL
    ##   ..$ angle        : NULL
    ##   ..$ lineheight   : NULL
    ##   ..$ margin       : NULL
    ##   ..$ debug        : NULL
    ##   ..$ inherit.blank: logi FALSE
    ##   ..- attr(*, "class")= chr [1:2] "element_text" "element"
    ##  $ legend.key        :List of 5
    ##   ..$ fill         : chr "#FFFFFF00"
    ##   ..$ colour       : NULL
    ##   ..$ size         : NULL
    ##   ..$ linetype     : NULL
    ##   ..$ inherit.blank: logi FALSE
    ##   ..- attr(*, "class")= chr [1:2] "element_rect" "element"
    ##  $ legend.position   : chr "bottom"
    ##  $ panel.background  : list()
    ##   ..- attr(*, "class")= chr [1:2] "element_blank" "element"
    ##  $ panel.border      : list()
    ##   ..- attr(*, "class")= chr [1:2] "element_blank" "element"
    ##  $ panel.grid.major.x: list()
    ##   ..- attr(*, "class")= chr [1:2] "element_blank" "element"
    ##  $ panel.grid.major.y:List of 6
    ##   ..$ colour       : chr "#D8D8D8"
    ##   ..$ size         : NULL
    ##   ..$ linetype     : NULL
    ##   ..$ lineend      : NULL
    ##   ..$ arrow        : logi FALSE
    ##   ..$ inherit.blank: logi FALSE
    ##   ..- attr(*, "class")= chr [1:2] "element_line" "element"
    ##  $ panel.grid.minor.x: list()
    ##   ..- attr(*, "class")= chr [1:2] "element_blank" "element"
    ##  $ panel.grid.minor.y: list()
    ##   ..- attr(*, "class")= chr [1:2] "element_blank" "element"
    ##  - attr(*, "class")= chr [1:2] "theme" "gg"
    ##  - attr(*, "complete")= logi FALSE
    ##  - attr(*, "validate")= logi TRUE
    ## 
    ## [[2]]
    ## $caption
    ## [1] "Julien Gossa, Camille Noûs - CPESR GPL-3.0 https://github.com/cpesr/RFC"
    ## 
    ## attr(,"class")
    ## [1] "labels"

### Distribution des établissements

    ## `summarise()` regrouping output by 'Rentrée', 'Type.établissement' (override with `.groups` argument)

![](tauxdencadrement_files/figure-gfm/etab.distrib-1.png)<!-- -->

Top 10 :

<table>

<thead>

<tr>

<th style="text-align:left;">

Rentrée

</th>

<th style="text-align:left;">

Type.établissement

</th>

<th style="text-align:left;">

Etablissement

</th>

<th style="text-align:right;">

Enseignants

</th>

<th style="text-align:right;">

Etudiants

</th>

<th style="text-align:right;">

Taux.d.encadrement

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

Grand étab.

</td>

<td style="text-align:left;">

Observatoire de Paris

</td>

<td style="text-align:right;">

84

</td>

<td style="text-align:right;">

98

</td>

<td style="text-align:right;">

85.71429

</td>

</tr>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

Grand étab.

</td>

<td style="text-align:left;">

Muséum national d’histoire naturelle (MNHN)

</td>

<td style="text-align:right;">

219

</td>

<td style="text-align:right;">

427

</td>

<td style="text-align:right;">

51.28806

</td>

</tr>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

Grand étab.

</td>

<td style="text-align:left;">

Institut de physique du globe (IPG de Paris)

</td>

<td style="text-align:right;">

39

</td>

<td style="text-align:right;">

77

</td>

<td style="text-align:right;">

50.64935

</td>

</tr>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

Grand étab.

</td>

<td style="text-align:left;">

École pratique des hautes études (EPHE)

</td>

<td style="text-align:right;">

191

</td>

<td style="text-align:right;">

714

</td>

<td style="text-align:right;">

26.75070

</td>

</tr>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

ENS

</td>

<td style="text-align:left;">

École normale supérieure de Lyon (ENS de Lyon)

</td>

<td style="text-align:right;">

285

</td>

<td style="text-align:right;">

1963

</td>

<td style="text-align:right;">

14.51859

</td>

</tr>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

Autre

</td>

<td style="text-align:left;">

Chimie ParisTech-PSL

</td>

<td style="text-align:right;">

43

</td>

<td style="text-align:right;">

430

</td>

<td style="text-align:right;">

10.00000

</td>

</tr>

</tbody>

</table>

![](tauxdencadrement_files/figure-gfm/etab.distrib.zoom-1.png)<!-- -->

## Taux d’encadrement par grande discipline

### Evolution globale

    ## `summarise()` regrouping output by 'Rentrée' (override with `.groups` argument)

![](tauxdencadrement_files/figure-gfm/disc.globale-1.png)<!-- -->

### Distribution

    ## `summarise()` regrouping output by 'Rentrée', 'Etablissement' (override with `.groups` argument)

![](tauxdencadrement_files/figure-gfm/disc.distrib-1.png)<!-- -->

Top 10 (on y constate la limite disciplinaire expliquée au dessus) :

<table>

<thead>

<tr>

<th style="text-align:left;">

Rentrée

</th>

<th style="text-align:left;">

Etablissement

</th>

<th style="text-align:left;">

Grande.discipline

</th>

<th style="text-align:right;">

Enseignants

</th>

<th style="text-align:right;">

Etudiants

</th>

<th style="text-align:right;">

Taux.d.encadrement

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

Institut national des sciences appliquées de Lyon (INSA de Lyon)

</td>

<td style="text-align:left;">

LSHS

</td>

<td style="text-align:right;">

60

</td>

<td style="text-align:right;">

4

</td>

<td style="text-align:right;">

1500.0000

</td>

</tr>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

Institut polytechnique de Grenoble (Grenoble INP)

</td>

<td style="text-align:left;">

DEG

</td>

<td style="text-align:right;">

15

</td>

<td style="text-align:right;">

1

</td>

<td style="text-align:right;">

1500.0000

</td>

</tr>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

Toulouse INP

</td>

<td style="text-align:left;">

LSHS

</td>

<td style="text-align:right;">

21

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

1050.0000

</td>

</tr>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

Université Panthéon-Assas

</td>

<td style="text-align:left;">

ST

</td>

<td style="text-align:right;">

20

</td>

<td style="text-align:right;">

3

</td>

<td style="text-align:right;">

666.6667

</td>

</tr>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

Toulouse INP

</td>

<td style="text-align:left;">

DEG

</td>

<td style="text-align:right;">

10

</td>

<td style="text-align:right;">

2

</td>

<td style="text-align:right;">

500.0000

</td>

</tr>

<tr>

<td style="text-align:left;">

2018

</td>

<td style="text-align:left;">

Centrale Lyon (EC Lyon)

</td>

<td style="text-align:left;">

LSHS

</td>

<td style="text-align:right;">

12

</td>

<td style="text-align:right;">

7

</td>

<td style="text-align:right;">

171.4286

</td>

</tr>

</tbody>

</table>

![](tauxdencadrement_files/figure-gfm/disc.distrib.zoom-1.png)<!-- -->
