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

#Data
Descriptive - Beschrijven van een data set  
Exploratory - Relaties vinden die je niet kent  
Inferential - Met een kleine sample iets over een grotere populatie zeggen  
Predictive - Met waarden voor de ene object iets zeggen over een ander object  
Causal - Wat gebeurd er met de waarden van een variabele, als je andere variabelen veranderd (vaak beschreven in gemiddeldes)  
Mechanistic - De exacte veranderingen in variabelen begrijpen die veranderingen in andere objecten veranderen  

*Correlatie is geen relatie!*  

Data zijn waarden van kwalitatieve of kwantitatieve variabelen, die horen bij een set items  

Set items - de populatie waarin je geïnteresseerd bent  
Variabelen - De meting of de karakteristiek van een item  
Kwantitaitef - Meting op een continue schaal  
Kwalitatief - Attribuut  

*Het belangrijkste ding is de vraag*

