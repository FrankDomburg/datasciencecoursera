R Programming
============

#Objects
##Atomic
###Character    
###Numeric  
* L specifies an integer  
* Inf specifies infinity  
* NaN specifies not a number  
###Integer  
* 1:20 creates integer sequence
###Complex  
####Logical  

###Vector  
* Objects of the same class  
* Created using the function c()

Vector("type", length=xx)  - Creates an empty vector  
*Coersion* brings the vector to the lowest denominator
It can be triggered using as.* function

###List  
- Vector with objects of different classes
- created using list()  

###Factors
Used for categorical data  
Either ordered or unordered  
Use factor(vector, levels=vector)
Use unclass() to find the integer applied  


###Matrix
- Vector with *dimension* attribute  
- Dimension is a vector of length 2 (nrow, ncol)  
- Created using (matrix(nrow = x, ncol = y)  
- Adding two vectors as columns, cbind()  
- Adding two vectors as rows, rbind()  

###Data Frames
data.frame(vector, vector, ...)  
Type of list  
Each Column can have a different type of object  
read.table() or read.csv()  
Convert to matrix, using data.matrix()  
Columns can be given names using the names() function


##Attributes
Using attributes()  
Names, dimnames  
Dimensions  
Class  
Length  
Levels  
Other  

## Missing Values
is.na()
is.nan()
nan = na
na != nan

#Subsetting
$ Extract elements of a list using names  
[[ Extract elements of a list using numbers

[ Extract objects using numbers (can be more than one)

