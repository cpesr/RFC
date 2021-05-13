Untitled
================

``` r
knitr::opts_chunk$set(echo = FALSE)

sise <- read.csv("sise_mobilite.csv", stringsAsFactors=TRUE)

read.csv("sise_sample.csv", stringsAsFactors=TRUE) %>%
  group_by(across(starts_with("Mobilité") | starts_with("Attractivité"))) %>%
  summarise(compte = n()) %>%
  ungroup() %>%
  mutate(compte = compte/sum(compte)) %>%
  arrange(desc(compte)) %>% 
  kable()
```

    ## `summarise()` regrouping output by 'Mobilité.internationale', 'Attractivité.départementale..département.d.obtention.du.baccalauréat.', 'Attractivité.régionale..région.d.obtention.du.baccalauréat.' (override with `.groups` argument)

<table>

<thead>

<tr>

<th style="text-align:left;">

Mobilité.internationale

</th>

<th style="text-align:left;">

Attractivité.départementale..département.d.obtention.du.baccalauréat.

</th>

<th style="text-align:left;">

Attractivité.régionale..région.d.obtention.du.baccalauréat.

</th>

<th style="text-align:left;">

Attractivité.internationale

</th>

<th style="text-align:right;">

compte

</th>

</tr>

</thead>

<tbody>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Autres départements français

</td>

<td style="text-align:left;">

Autres académies de la région

</td>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Autres départements français

</td>

<td style="text-align:left;">

Autres régions françaises

</td>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Autres départements français

</td>

<td style="text-align:left;">

Autres régions françaises

</td>

<td style="text-align:left;">

Etudiants de nationalité étrangère issus de systèmes éducatifs étrangers

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Autres départements français

</td>

<td style="text-align:left;">

Même académie

</td>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Départements limitrophes

</td>

<td style="text-align:left;">

Autres académies de la région

</td>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Départements limitrophes

</td>

<td style="text-align:left;">

Autres régions françaises

</td>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Départements limitrophes

</td>

<td style="text-align:left;">

Même académie

</td>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Etranger

</td>

<td style="text-align:left;">

Etranger

</td>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Même département

</td>

<td style="text-align:left;">

Même académie

</td>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Même département

</td>

<td style="text-align:left;">

Même académie

</td>

<td style="text-align:left;">

Etudiants de nationalité étrangère issus de systèmes éducatifs étrangers

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Non bacheliers

</td>

<td style="text-align:left;">

Non bacheliers

</td>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Non renseigné

</td>

<td style="text-align:left;">

Non renseigné

</td>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:left;">

Non renseigné

</td>

<td style="text-align:left;">

Non renseigné

</td>

<td style="text-align:left;">

Etudiants de nationalité étrangère issus de systèmes éducatifs étrangers

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Etudiants étrangers en mobilité internationale

</td>

<td style="text-align:left;">

Etranger

</td>

<td style="text-align:left;">

Etranger

</td>

<td style="text-align:left;">

Autres cas

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Etudiants étrangers en mobilité internationale

</td>

<td style="text-align:left;">

Etranger

</td>

<td style="text-align:left;">

Etranger

</td>

<td style="text-align:left;">

Etudiants de nationalité étrangère issus de systèmes éducatifs étrangers

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

<tr>

<td style="text-align:left;">

Etudiants étrangers en mobilité internationale

</td>

<td style="text-align:left;">

Non bacheliers

</td>

<td style="text-align:left;">

Non bacheliers

</td>

<td style="text-align:left;">

Etudiants de nationalité étrangère issus de systèmes éducatifs étrangers

</td>

<td style="text-align:right;">

0.0625

</td>

</tr>

</tbody>

</table>

## Par niveaux

    ## `summarise()` regrouping output by 'Rentrée', 'Mobilité' (override with `.groups` argument)

![](Mobilite_internationale_files/figure-gfm/Niveaux-1.png)<!-- -->

    ## `summarise()` regrouping output by 'Rentrée', 'Mobilité' (override with `.groups` argument)

![](Mobilite_internationale_files/figure-gfm/Niveaux.details-1.png)<!-- -->

    ## `summarise()` regrouping output by 'RENTREE', 'Mobilité' (override with `.groups` argument)

![](Mobilite_internationale_files/figure-gfm/prop-1.png)<!-- -->
