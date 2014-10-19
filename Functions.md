R Programming - Control Structures
===

#Control Structures
##For
De for loop om door lists te gaan  

	for (i in 1:10) 
	{  
		Do something useful here
	}


##While
While om door te gaan tot conditie(s) waar zijn

	while(i<10 && j>10)
	{
		Do something useful here
	}  

##Repeat en break
Om door te gaan tot gebroken wordt  

	repeat {
		Do iets
		if ( i == 10) {
			break
		}
	}

##Next
Skip iteration of a loop
 
##Return
Exit the function, return the last evaluated statement

#Functions
Functies kunnen:

* aan andere functies gegeven worden als parameters  
* worden genest  
* het antwoord is de laatste geëvalueerde statement  

Ze zien er zo uit  

	f <- function(a, b=1,c=2,d=NULL, ...) {
		Do iets
	}
 
Met de *formals* functie, zie je de argumenten.  
Je kunt de naam van het argument expliciet meegeven.  
Met het = teken in de functie geef je een default mee  
Ze worden lui geëvalueerd, een argument wanneer niet gedefinieerd, geeft geen error   
  
##...

staat toe oneindig parameters door te geven  
staat toe de andere parameters niet aan te passen  
argumenten na ..., moeten named zijn  

##lapply
Pas functie toe op elk element van een list en geef  een list met antwoorden terug  

	lapply(x, FUN, ...)

##sapply
Pas lapply toe en versimpel het resultaat
##apply
Pas functie toe op de randen van een array  

@TODO

##tapply
Pas functie toe op een subset van een vector  

	function (X, INDEX, FUN = NULL, ..., simplify = TRUE)

... geeft argumenten door aan de functie  
Groepeert X volgens INDEX en past dan de functie toe  

##mapply
Pas functie toe op elk element van een matrix  

@TODO
##split
Split breekt de vectors met de INDEX  
Gebruik interaction(x,y) om subgroepen te maken  
Argument Drop = TRUE om lege levels te laten vervallen  
