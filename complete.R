complete <- function(directory, id = 1:332) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return a data frame of the form:
        ## id nobs
        ## 1  117
        ## 2  1041
        ## ...
        ## where 'id' is the monitor ID number and 'nobs' is the
        ## number of complete cases

        ## Check if there is only one filename
        if (length(directory)>1)
        {
                print("Function takes only one directory argument")
                return()
        }
        
        ## Check if the list of IDs is valid (basic check only)
        if (length(id)==0)
        {
                print("At least one Monitor ID should be supplied")
        }
        
        My_File_Names <- character()
        Resultset <- data.frame()
        
        directory <- paste(directory,"/",sep="")
        My_File_Names <- list.files(path=directory, pattern="*.csv")
        My_File_Names <- paste(directory,My_File_Names, sep="")
        
        Resultset <- data.frame(id=NULL, Nobs=NULL)
        
        ## load the filenames
        
        for (i in id)
        {
                loadedfile = read.csv(My_File_Names[i])
                Resultset <- rbind(Resultset,c(i,sum(complete.cases(loadedfile))))
        }
        
        colnames(Resultset)=c("id","nobs")
        Resultset
}

