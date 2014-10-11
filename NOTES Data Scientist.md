Notes Training 1 - The Data Scientist Toolbox
======

#Commandline
pwd    - Path to Working directory  
clear   - Clear Window  
ls -a    - Alle hidden files ook  
ls -l     - Alle details  
touch  - Maak legs file  
cp -r    - Copieer recursief

#GIT
git init  - Maak local repo-index in de huidige directory  
git remote add origin - Laat de repo wijzen naar GitHub
git clone - Haal de repo binnen

##Local Maintenance
Maak files aan  
git add -A - Alle files toevoegen aan de repo voor monitoring  
git add .    - Alle nieuwe files toevoegen
git add -u  - Alle filename veranderingen en deleties updaten aan de index

git commit -m "Boodschap" - Alle veranderingen lokaal vastleggen, met de mededeling als beschrijving  
git push - Alle veranderingen uploaden naar GitHub  

##Fork
Eerst fork je op GitHub - levert een remote copy  
git clone  - Brengt de repo van GitHub naar Local

#R taal
a <- available.packages()   - Lijst van beschikbare pakketten  
head  
install.packages("naam pakket") - Om een pakket te installeren  
install.packages(c("pakket1","pakket2")) - Meerdere pakketten tegelijk  
library(naam pakket) - Om het pakket beschikbaar te draaien, *geen* string!  
[end]
