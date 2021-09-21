Concours MCF
================

*Ce document est un brouillon de différentes visualisations. Il a
seulement vocation à permettre la discussion. Les observations et
propositions peuvent être ajoutées [en
issues](https://github.com/cpesr/RFC/issues).*

## Description des données

-   Source :
    <https://www.enseignementsup-recherche.gouv.fr/cid118435/personnels-enseignants-du-superieur-bilans-et-statistiques.html>
-   Nombre d’observations : 1024
-   Variables :

<!-- -->

    ##  [1] "Section.Annee"                          
    ##  [2] "TypeRecrutement"                        
    ##  [3] "GrandeDisciplineCNU"                    
    ##  [4] "GroupeCNU"                              
    ##  [5] "SousGroupeCNU"                          
    ##  [6] "SectionCNU"                             
    ##  [7] "SectionCNU.ID"                          
    ##  [8] "Annee"                                  
    ##  [9] "QualificationDossiers.MCF"              
    ## [10] "QualificationQualifies.MCF"             
    ## [11] "PostesPublies.MCF"                      
    ## [12] "Candidatures.MCF"                       
    ## [13] "Candidats.MCF"                          
    ## [14] "PostesPourvus.MCF"                      
    ## [15] "Candidatures.MCF.F"                     
    ## [16] "Candidatures.MCF.H"                     
    ## [17] "Candidats.MCF.F"                        
    ## [18] "Candidats.MCF.H"                        
    ## [19] "Recrutes.MCF.F"                         
    ## [20] "Recrutes.MCF.H"                         
    ## [21] "candidatures.par.candidat.MCF"          
    ## [22] "candidatures.par.poste.MCF"             
    ## [23] "candidats.par.poste.MCF"                
    ## [24] "candidatures.par.candidat.par.poste.MCF"
    ## [25] "Code.GrandeDisciplineCNU"

-   Période : 2002, 2019

## Nombre de candidats par poste MCF

### Moyenne toutes sections confondues de 2009 à 2019

    ##      CNU 
    ## 11.59439

    ##                Droit éco ges Lettres et sciences humaines 
    ##                     6.805507                    13.591889 
    ##                    Pharmacie       Sciences et techniques 
    ##                     8.620111                    11.135745

### Vision globale par grande discipline et groupes CNU

![](ConcoursMCF_files/figure-gfm/candidats.par.poste.MCF.1-1.png)<!-- -->

![](ConcoursMCF_files/figure-gfm/candidats.par.poste.MCF.2-1.png)<!-- -->

## Nombre de candidatures par candidat aux postes MCF

### Vision globale par grande discipline et groupes CNU

![](ConcoursMCF_files/figure-gfm/candidatures.par.candidat.MCF.1-1.png)<!-- -->

![](ConcoursMCF_files/figure-gfm/candidatures.par.candidat.MCF.2-1.png)<!-- -->

**Remarques :**

-   Le nb de candidatures par candidat est borné par le nombre de postes
    publiés. S’il n’y a qu’un poste (ex. en LLA 2015), il ne peut y
    avoir qu’une candidature par candidat.
-   Ces calculs ne prennent pas en compte le fait que certains candidats
    candidatent dans plusieurs sections.
-   C’est un nombre moyen de candidatures. Certains candidatent plus,
    d’autres moins, et on ne connait pas cette disparité avec ce jeu de
    données.

**Questions :**

Si des personnes ont des idées de comment intégrer cette variable du nb
de postes dans le calcul et/ou l’analyse, nous sommes preneurs.

-   Une possibilité serait de ne garder que les sections &gt; 2 postes
    (ou tout autre chiffre plus pertinent).
-   [@Pandalatesta](https://twitter.com/Pandalatesta/status/1333473037342175233)
    : C’est possible d’avoir le nb de candidatures rapportés au nb de
    postes (en gros un candidat candidate à cb de % des postes publiés).
    Ca permettrait de voir si l’effet désespoir et plus fort que l’effet
    de spécialisation des profils qui permet de faire le tri.

Pour regarder le potentiel rôle du CNU comme filtre évitant le trop
plein de candidatures dans certaines disciplines :

-   [@gaiauniversitas](https://twitter.com/gaiauniversitas/status/1333468971350200321)
    : C’est certain qu’avec ce genre de graphe on comprend mieux
    pourquoi les profs de droits sont contre la suppression de la
    qualification.
-   [@gaiauniversitas](https://twitter.com/gaiauniversitas/status/1333484701428969472)
    : si dans une discipline les candidats font de nombreuses
    candidatures, on peut être tenté par un taux de qualification faible
    afin de ne pas submerger les comités de sélection.
-   [@gaiauniversitas](https://twitter.com/gaiauniversitas/status/1333485369963270149)
    : graphique du nombre moyen de candidatures par candidats, en
    fonction du taux de qualifiés
-   [@snoevpr](https://twitter.com/Snoevpr/status/1333530523956862976) :
    données sur 15 ans pour les postes publiés, et mettre en regard le
    nombre de candidats chaque année et le nombre de qualifiés (par
    section). Je doute qu on observe une corrélation significative….
-   [@gaiauniversitas](https://twitter.com/gaiauniversitas/status/1333532431555702784)
    : le point initial était l’étude d’une éventuelle corrélation entre
    le nombre moyen de candidatures par candidats en fonction du taux de
    qualifiés (section par section, ou groupe par groupe). Là je pense
    qu’on a des chances de voir une corrélation et ça peut être
    éclairant.
-   [@snoevpr](https://twitter.com/Snoevpr/status/1333534262767857664) :
    Pas si clair que ça soit si bien corrélé : par exemple, suivant les
    pratiques de fléchage, ça peut donner des choses assez différentes.
    Et y a un nombre non négligeable de qualifiés qui ne candidatent
    pas. A voir.

**Visualisation :**

-   [@snoevpr](https://twitter.com/Snoevpr/status/1333487810280611843) :
    le meme avec des symboles différents par section dans un groupe ?
-   [@snoevpr](https://twitter.com/Snoevpr/status/1333511064248520707) :
    tracer séparément chaque groupe puis superposer en décalant et sans
    les axes sauf pour un ?

### Evolution de 2013 à 2019 toutes sections confondues

![](ConcoursMCF_files/figure-gfm/candidatures.par.candidat.MCF.3-1.png)<!-- -->

### Evolution de 2013 à 2019 par grande discipline

![](ConcoursMCF_files/figure-gfm/candidatures.par.candidat.MCF.4-1.png)<!-- -->

### Candidats, candidatures et postes

![](ConcoursMCF_files/figure-gfm/candidats.candidatures.postes-1.png)<!-- -->

    ## Warning: Removed 3 rows containing missing values (geom_label_repel).

    ## Warning: ggrepel: 5 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

    ## Warning: ggrepel: 13 unlabeled data points (too many overlaps). Consider
    ## increasing max.overlaps

![](ConcoursMCF_files/figure-gfm/candidats.candidatures.postes.2-1.png)<!-- -->

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

![](ConcoursMCF_files/figure-gfm/candidats.candidatures.postes.DEG-1.png)<!-- -->

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/candidats.candidatures.postes.DEG.2-1.png)<!-- -->

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

    ## Warning: Not enough data to perform fit for group 25; computing mean instead.

![](ConcoursMCF_files/figure-gfm/candidats.candidatures.postes.LSHS-1.png)<!-- -->

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/candidats.candidatures.postes.Pharma-1.png)<!-- -->

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/candidats.candidatures.postes.ST-1.png)<!-- -->

![](ConcoursMCF_files/figure-gfm/candidatures.par.poste-1.png)<!-- -->

![](ConcoursMCF_files/figure-gfm/candidatures.par.poste.2-1.png)<!-- -->

    ## Warning: Removed 1 rows containing non-finite values (stat_boxplot).

![](ConcoursMCF_files/figure-gfm/candidatures.par.candidat.par.poste-1.png)<!-- -->

    ## Warning: Removed 1 rows containing missing values (geom_point).

![](ConcoursMCF_files/figure-gfm/candidatures.par.candidat.par.poste.2-1.png)<!-- -->

## Comparaison nb de postes, candidats et qualifiés par section

### En 2019

Ordonné par nb de postes publiés
![](ConcoursMCF_files/figure-gfm/qualifies.candidats.postes.2019.1-1.png)<!-- -->

Ordonné par nb de candidats / nb de postes
![](ConcoursMCF_files/figure-gfm/qualifies.candidats.postes.2019.2-1.png)<!-- -->

Ordonné par section
![](ConcoursMCF_files/figure-gfm/qualifies.candidats.postes.2019.3-1.png)<!-- -->

### En 2013

![](ConcoursMCF_files/figure-gfm/qualifies.candidats.postes.2013.1-1.png)<!-- -->

Ordonné par nb de candidats / nb de postes
![](ConcoursMCF_files/figure-gfm/qualifies.candidats.postes.2013.2-1.png)<!-- -->

Ordonné par section
![](ConcoursMCF_files/figure-gfm/qualifies.candidats.postes.2013.3-1.png)<!-- -->

### Evolution de 2014 à 2019

![](ConcoursMCF_files/figure-gfm/evolution.qualifies.candidats.postes.2014to2019.1-1.png)<!-- -->

Ordonné par section
![](ConcoursMCF_files/figure-gfm/evolution.qualifies.candidats.postes.2014to2019.2-1.png)<!-- -->

### Evolution de 2009 à 2019

![](ConcoursMCF_files/figure-gfm/evolution.qualifies.candidats.postes.2009to2019.1-1.png)<!-- -->

Ordonné par section
![](ConcoursMCF_files/figure-gfm/evolution.qualifies.candidats.postes.2009to2019.2-1.png)<!-- -->

### Candidats et postes

#### Nombre de candidats en fonction du nombre de postes

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/candidats.postes.DEG.1-1.png)<!-- -->

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/candidats.postes.LSHS.1-1.png)<!-- -->

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/candidats.postes.ST.1-1.png)<!-- -->

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/candidats.postes.Pharma.1-1.png)<!-- -->

#### Nombre de candidats par poste en fonction du nombre de postes

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/candidats.par.postes.DEG.1-1.png)<!-- -->

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/candidats.par.postes.LSHS.1-1.png)<!-- -->

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/candidats.par.postes.ST.1-1.png)<!-- -->

    ## Warning: `guides(<scale> = FALSE)` is deprecated. Please use `guides(<scale> =
    ## "none")` instead.

    ## `geom_smooth()` using formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/candidats.par.postes.Pharma.1-1.png)<!-- -->

#### Evolution du nombre de postes

**Remarque**

-   Entre 2002 et 2005, les postes ouverts réservés aux assistants
    titulaires (sur liste d’aptitude = article 62 pour fusion des corps
    depuis le décret de 1984) ne sont pas comptabilisés. Il y en avait
    250 par an. Les postes prennent par contre en compte les mutations
    et détachements. On retrouve la dynamique observée sur les «
    nouveaux postes » de Guillaume Miquelard (soit une stagnation entre
    2000 et 2007) alors que si on prend en compte tous les articles de
    recrutement MCF, la chute est (globalement) continue depuis au
    moins 1998.

<!-- -->

    ## 2002 2003 2004 2005 2006 2007 2008 2009 2010 2011 2012 2013 2014 2015 2016 2017 
    ## 2417 2158 2357 2091 2318 2284 2060 2194 2101 1989 1852 1675 1447 1299 1328 1254 
    ## 2018 2019 
    ## 1183 1070

Sources :

-   démographie CNU (session synchro + fil de l’eau +
    mutation/détachement)
-   recrutements (variable, sur les dernières années en excel : session
    synchro + fil de l’eau + mutation/détachement)

Dans la base de données utilisées ici :

-   2019, 2017 : OK (session synchro + fil de l’eau +
    mutation/détachement)

-   2018 : 6 postes manquant dans les rapports sur les recrutements par
    rapport aux fiches démographiques CNU

-   2016 : 5 postes en trop : OK (pb en 77 : OK)

-   2010 : 5 postes manquant dans les fiches démographiques CNU par
    rapport aux rapports de recrutement

-   2009 : 2 postes manquant : OK

-   2008 : les postes 2nde session pour 2008 ne sont pas ventilés par
    discipline

-   2015 (OK), 2014 (OK), 2013 (OK), 2008 (OK), 2007 (OK), 2006 (OK),
    2005 (OK), 2004 (OK), 2003 (OK), 2002 (OK) : chiffres sans session
    fil de l’eau (OK) ou sans mutation/détachement (OK), à corriger.

![](ConcoursMCF_files/figure-gfm/evolution.postes.MCF.0-1.png)<!-- -->

![](ConcoursMCF_files/figure-gfm/evolution.postes.MCF.1-1.png)<!-- -->

    ## `geom_smooth()` using method = 'loess' and formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/evolution.postes.MCF.2-1.png)<!-- -->

    ## `geom_smooth()` using method = 'loess' and formula 'y ~ x'

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : span too small. fewer data values than degrees of freedom.

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : at 2002

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : radius 2.5e-05

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : all data on boundary of neighborhood. make span bigger

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : pseudoinverse used at 2002

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : neighborhood radius 0.005

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : reciprocal condition number 1

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : at 2003

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : radius 2.5e-05

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : all data on boundary of neighborhood. make span bigger

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : There are other near singularities as well. 2.5e-05

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : zero-width neighborhood. make span bigger

    ## Warning in simpleLoess(y, x, w, span, degree = degree, parametric =
    ## parametric, : zero-width neighborhood. make span bigger

    ## Warning: Computation failed in `stat_smooth()`:
    ## NA/NaN/Inf in foreign function call (arg 5)

![](ConcoursMCF_files/figure-gfm/evolution.postes.MCF.3-1.png)<!-- -->

    ## `geom_smooth()` using method = 'loess' and formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/evolution.postes.MCF.4-1.png)<!-- -->

# Séries longues par section : 2002 à 2019

## Section 27 : Informatique

    ## `geom_smooth()` using method = 'loess' and formula 'y ~ x'

![](ConcoursMCF_files/figure-gfm/evolution.postes.MCF.sec27.1-1.png)<!-- -->
