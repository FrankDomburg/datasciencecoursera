corr <- function(directory, threshold = 0) {
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'threshold' is a numeric vector of length 1 indicating the
        ## number of completely observed observations (on all
        ## variables) required to compute the correlation between
        ## nitrate and sulfate; the default is 0
        
        ## Return a numeric vector of correlations
        ## Check if there is only one filename
        if (length(directory)>1)
        {
                print("Function takes only one directory argument")
                return()
        }
        
        directory <- paste(directory,"/",sep="")
        My_File_Names <- list.files(path=directory, pattern="*.csv")
        My_File_Names <- paste(directory,My_File_Names, sep="")
        
        Resultset <- vector()
        
        for (i in 1:length(My_File_Names))
        {
                loadedfile = read.csv(My_File_Names[i])
                
                complete <- complete.cases(loadedfile)
                
                if (sum(complete)>threshold)
                {
                        corset <- subset(loadedfile,complete)
                        correlation <- cor(corset$nitrate,corset$sulfate)
                        Resultset <- cbind(Resultset,correlation)
                }
        }
        
        as.vector(Resultset)
}
