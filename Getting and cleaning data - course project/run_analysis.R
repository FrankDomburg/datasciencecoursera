## You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
##    for each activity and each subject.

## this script provides for step 5

runAnalysis <- function()
{
        ## load the data set
        if (!exists("tidyset"))
        {
                dataSet <- read.table("./tidyset.txt", header=TRUE)
        }

        ## calculate the mean per variable
        resultSet <- aggregate(dataSet[,3:81],by=list(dataSet$Subject,dataSet$Activity), mean)
        
        ## set the first two column names to be consistent
        colnames(resultSet)[1] <- c("Subject")
        colnames(resultSet)[2] <- c("Activity")
        
        ## Save the summarized files
        write.table(resultSet, "final_analysis.txt", row.names=FALSE)
}