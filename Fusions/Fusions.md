Untitled
================

``` r
libs.fusion <- unique(filter(esr,Fusion)$Libellé)
libs.nonfusion <- c(
          "Université Toulouse 1 - Capitole",
          "Université Toulouse - Jean Jaurès",
          "Université de Toulouse 3 - Paul Sabatier",
          #"Université fédérale de Toulouse Midi-Pyrénées",
          "Université Bordeaux-Montaigne"
          )
libs = c(libs.fusion,libs.nonfusion)


fusions <- esr.pnl %>%
  filter(Libellé %in% libs) %>%
  filter(as.character(Rentrée) > "2011") %>%
  filter(!str_detect(kpi,"ADM") & !str_detect(kpi,"K.sel")) %>%
  mutate(
    Fusionné = Libellé %in% libs.fusion,
    Etab = case_when(
      Libellé %in% libs.fusion ~ "Fusionné",
      TRUE ~ Libellé)) %>%
  arrange(Rentrée) %>%
  group_by(Libellé, kpi) %>%
  mutate(val100 = valeur / first(valeur) * 100)
```

Fusionné :

``` r
libs.fusion
```

    ## [1] "Aix-Marseille Université"     "Université de Bordeaux"      
    ## [3] "Université de Montpellier"    "Université de Lorraine"      
    ## [5] "Université de Lille"          "Université Clermont Auvergne"
    ## [7] "Université de Strasbourg"     "Sorbonne Université"

Non fusionné :

``` r
libs.nonfusion
```

    ## [1] "Université Toulouse 1 - Capitole"        
    ## [2] "Université Toulouse - Jean Jaurès"       
    ## [3] "Université de Toulouse 3 - Paul Sabatier"
    ## [4] "Université Bordeaux-Montaigne"

## Tous les indicateurs

``` r
fusions %>%
  ggplot(aes(x=Rentrée,y=norm,color=Fusionné)) +
  geom_line(aes(group=Libellé)) +
  facet_wrap(kpi~., scales = "free_y", ncol=2) +
  theme_cpesr_cap()
```

![](Fusions_files/figure-gfm/kpis-1.png)<!-- -->

``` r
fusions %>%
  ggplot(aes(x=Rentrée,y=val100,color=Fusionné)) +
  geom_line(aes(group=Libellé)) +
  facet_wrap(kpi~., scales = "free_y", ncol=2) +
  theme_cpesr_cap()
```

![](Fusions_files/figure-gfm/kpis.val100-1.png)<!-- -->
