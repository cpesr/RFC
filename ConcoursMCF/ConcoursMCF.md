Concours MCF
================

## Description des données

  - Nombre d’observations : 855
  - Variables :

<!-- end list -->

    ##  [1] "TypeRecrutement"            "GrandeDisciplineCNU"       
    ##  [3] "GroupeCNU"                  "SectionCNU"                
    ##  [5] "SectionCNU.ID"              "Annee"                     
    ##  [7] "QualificationDossiers.MCF"  "QualificationQualifies.MCF"
    ##  [9] "PostesPublies.MCF"          "Candidatures.MCF"          
    ## [11] "Candidats.MCF"              "PostesPourvus.MCF"         
    ## [13] "Candidatures.MCF.F"         "Candidatures.MCF.H"        
    ## [15] "Candidats.MCF.F"            "Candidats.MCF.H"           
    ## [17] "Recrutes.MCF.F"             "Recrutes.MCF.H"

  - Période : 2005,
2019

## Nombre de candidatures par candidat aux postes MCF

### Vision globale par grande discipline et groupes CNU

![](ConcoursMCF_files/figure-gfm/candidatures.par.candidat.MCF.1-1.png)<!-- -->

**Remarques :**

  - Le nb de candidatures par candidat est borné par le nombre de postes
    publiés. S’il n’y a qu’un poste (ex. en LLA 2015), il ne peut y
    avoir qu’une candidature par candidat.
  - Ces calculs ne prennent pas en compte le fait que certains candidats
    candidatent dans plusieurs sections.
  - C’est un nombre moyen de candidatures. Certains candidatent plus,
    d’autres moins, et on ne connait pas cette disparité avec ce jeu
    de données.

**Questions :**

Si des personnes ont des idées de comment intégrer cette variable du nb
de postes dans le calcul et/ou l’analyse, nous sommes preneurs.

  - Une possibilité serait de ne garder que les sections \> 2 postes (ou
    tout autre chiffre plus pertinent).
  - @Pandalatesta : C’est possible d’avoir le nb de candidatures
    rapportés au nb de postes (en gros un candidat candidate à cb de %
    des postes publiés). Ca permettrait de voir si l’effet désespoir et
    plus fort que l’effet de spécialisation des profils qui permet de
    faire le tri.

Pour regarder le potentiel rôle du CNU comme filtre évitant le trop
plein de candidatures dans certaines disciplines :

  - @gaiauniversitas : C’est certain qu’avec ce genre de graphe on
    comprend mieux pourquoi les profs de droits sont contre la
    suppression de la qualification.
  - @gaiauniversitas : si dans une discipline les candidats font de
    nombreuses candidatures, on peut être tenté par un taux de
    qualification faible afin de ne pas submerger les comités de
    sélection.
  - @gaiauniversitas : graphique du nombre moyen de candidatures par
    candidats, en fonction du taux de qualifiés

**Visualisation :**

  - @snoevpr : le meme avec des symboles différents par section dans un
    groupe ?
  - @snoevpr : tracer séparément chaque groupe puis superposer en
    décalant et sans les axes sauf pour un
?

### Evolution de 2013 à 2019 toutes sections confondues

![](ConcoursMCF_files/figure-gfm/candidatures.par.candidat.MCF.2-1.png)<!-- -->

### Evolution de 2013 à 2019 par grande discipline

![](ConcoursMCF_files/figure-gfm/candidatures.par.candidat.MCF.3-1.png)<!-- -->
