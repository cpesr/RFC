#!/bin/bash

# NAP 92. 82.
# NAF1993 80.
# NAFRev1 80.
# NAFRev2 85.

head -n 1 $1 
grep "92\..*,NAP\|82\..*,NAP\|80\..*,NAF1993\|80\..*,NAFRev1\|85\..*,NAFRev2" $1 

# grep "92\..*,NAP" StockEtablissementHistorique_utf8.csv 
# grep "82\..*,NAP" StockEtablissementHistorique_utf8.csv 
# grep "80\..*,NAF1993" StockEtablissementHistorique_utf8.csv 
# grep "80\..*,NAFRev1" StockEtablissementHistorique_utf8.csv 
# grep "85\..*,NAFRev2" StockEtablissementHistorique_utf8.csv 