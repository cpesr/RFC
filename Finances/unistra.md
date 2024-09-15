Unistra
================

``` r
fin %>%
  filter(as.character(exercice) >= "2015") %>%
  filter(etablissement == "Université de Strasbourg") %>%
  group_by(exercice) %>%
  summarize(
    MS.sur.PFE = mean(Dépenses.de.personnel...Produits.encaissables, na.rm=TRUE),
  ) %>%
  ggplot(aes(x=exercice, y=MS.sur.PFE)) +
    geom_line(aes(color=MS.sur.PFE,group="Indicateur"), size=1) +
    geom_point(shape=21, color="white", size=4, stroke = 1, aes(fill=MS.sur.PFE)) + 
  geom_vline(xintercept = "2017", color="grey") +
    #expand_limits(y=0) +
    ylab("") +
    scale_y_continuous(labels = ~ scales::percent(.x, scale=1)) + #, limits = c(75,85)) +
    scale_fill_distiller(palette="Greens", direction = 0, limits = c(0,100), guide = "none") +
    scale_color_distiller(palette="Greens", direction = 0, limits = c(0,100), guide = "none") +
    ggtitle(paste0("Part des dépenses de personnels dans les produits encaissables"), 
      subtitle="Université de Strasbourg - 1% représente environ 5 M€") +
    theme_cpesr_cap(author="SNESUP-FSU Strasbourg", url="")
```

![](unistra_files/figure-gfm/etab.focus.ms.vs.pfe-1.png)<!-- -->
