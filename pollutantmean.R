pollutantmean <- function(directory, pollutant, id = 1:332) 
{
        ## 'directory' is a character vector of length 1 indicating
        ## the location of the CSV files
        
        ## 'pollutant' is a character vector of length 1 indicating
        ## the name of the pollutant for which we will calculate the
        ## mean; either "sulfate" or "nitrate".
        
        ## 'id' is an integer vector indicating the monitor ID numbers
        ## to be used
        
        ## Return the mean of the pollutant across all monitors list
        ## in the 'id' vector (ignoring NA values)
 
        ## Check if there is only one filename
        if (length(directory)>1)
        {
                print("Function takes only one directory argument")
                return()
        }
        
        ## Check if the polluntant is valid
        if (length(pollutant)>1)
        {
                print("Function takes only one pollutant argument")
                return()
        }
        if (pollutant!="sulfate"&&pollutant!="nitrate")
        {
                print("The pollutant argument should be sulfate or nitrate")
                return()
        }
        
        ## Check if the list of IDs is valid (basic check only)
        if (length(id)==0)
        {
                print("At least one Monitor ID should be supplied")
        }
        
        My_File_Names <- character()
        
        ## Generate File Names from id
        ## Filenames under 100, have a preceding zero
        ## Filenames under 10, have an additional zero
        
        for (i in seq_along(id))
        {
                File_ID <- if (id[i]<10)
                        {
                                paste("00",id[i],sep="")
                        } else if (id[i]<100)
                        {
                                paste("0",id[i],sep="")
                        } else
                        {
                                paste(id[i],sep="")
                        }
                My_File_Names[i] <- paste(directory,"/",File_ID,".csv",sep="")
        }
        
        ## load the filenames in My_File_Names and bind them to the data
 
        data <- data.frame()
        
        for (i in 1:length(My_File_Names))
        {
                loadedfile = read.csv(My_File_Names[i])
                data <- rbind(data,loadedfile)
        }
        
        mean(data[,pollutant], na.rm=TRUE)
        
}

test_pollutant <- function()
{
        x <- pollutantmean("/Users/fdomburg/Documents/Data Scientist/Repo/datasciencecoursera/specdata","sulfate",1:10)
        print(x)
        ## [1] 4.064
        x <- pollutantmean("/Users/fdomburg/Documents/Data Scientist/Repo/datasciencecoursera/specdata","nitrate", 70:72)
        print(x)
        ## [1] 1.706
        x <- pollutantmean("/Users/fdomburg/Documents/Data Scientist/Repo/datasciencecoursera/specdata","nitrate", 23)
        print(x)
        ## [1] 1.281 
}