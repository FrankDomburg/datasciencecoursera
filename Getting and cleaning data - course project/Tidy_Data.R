## You should create one R script called run_analysis.R that does the following. 
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names. 
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
##    for each activity and each subject.

## this script provides for steps 1-4

tidyData <- function ()
{
        ## Start with test data-set, load the subjects
        if (!exists("testData_subject_test")){
                testData_subject_test <- read.table("./UCI HAR\ Dataset/test/subject_test.txt")
        }        
        dataSet <- data.frame(1:nrow(testData_subject_test))
        dataSet <- cbind(dataSet, testData_subject_test)
        
        colnames(dataSet)[2]=c("Subject")
        
        ## drop the first column name
        keeps = c("Subject")
        dataSet = dataSet[keeps]
        rm("testData_subject_test")
        
        ## load the activities
        if (!exists("testData_y_test")){
                testData_y_test <- read.table("./UCI HAR\ Dataset/test/y_test.txt")
        }
        
        dataSet <- cbind(dataSet, testData_y_test)
        colnames(dataSet)[2] <- c("Activity")
        rm("testData_y_test")
        
        ## match the activity labels in the set with the activity label descriptions

        ## load the measurements
        if (!exists("testData_X_test")){
                testData_X_test <- read.table("./UCI HAR\ Dataset/test/X_test.txt")
        }
        
        
        ## load the descriptions of the features, these are the column names from the file above
        if (!exists("features"))
        {
                features <-  read.table("./UCI HAR\ Dataset/features.txt")
        }
        
        ## assign the column names
        names(testData_X_test) <- features$V2
        
        ## find the column names that are a mean
        keep1 <- grep("mean",colnames(testData_X_test))
        ## find the column names that are a standard deviation and add them to the list
        keep2 <- grep("std",colnames(testData_X_test))
        ## make a list of column names to keep, and sort it neatly
        keep <- append(keep1, keep2)
        keep <- sort(keep)
        ## drop all other measurements
        testData_X_test <- testData_X_test[keep]
        
        ## Add the measurements to the dataSet
        dataSet <- cbind(dataSet, testData_X_test)
        rm("testData_X_test")
        
        ## load the activity descriptions
        if(!exists("activity_labels")){
                labels <- read.table("./UCI HAR\ Dataset/activity_labels.txt")
        }

        dataSet$Activity <- as.factor(dataSet$Activity)
        levels(dataSet$Activity) <- levels(labels$V2)
        
        ## And now the full file
        ## Start with test data-set, load the subjects
        if (!exists("trainData_subject_train")){
                trainData_subject_test <- read.table("./UCI HAR\ Dataset/train/subject_train.txt")
        }        
        dataSet2 <- data.frame(1:nrow(trainData_subject_test))
        dataSet2 <- cbind(dataSet2, trainData_subject_test)
        
        colnames(dataSet2)[2]=c("Subject")
        rm("trainData_subject_test")
        
        ## drop the first column name
        keeps = c("Subject")
        dataSet2 = dataSet2[keeps]
        
        ## load the activities
        if (!exists("trainData_y_train")){
                trainData_y_test <- read.table("./UCI HAR\ Dataset/train/y_train.txt")
        }
        
        dataSet2 <- cbind(dataSet2, trainData_y_test)
        colnames(dataSet2)[2] <- c("Activity")
        rm("trainData_y_test")
        
        ## match the activity labels in the set with the activity label descriptions
        
        ## load the measurements
        if (!exists("testData_X_train")){
                trainData_X_test <- read.table("./UCI HAR\ Dataset/train/X_train.txt")
        }
        
        
        ## load the descriptions of the features, these are the column names from the file above
        if (!exists("features"))
        {
                features <-  read.table("./UCI HAR\ Dataset/features.txt")
        }
        
        ## assign the column names
        names(trainData_X_test) <- features$V2
        
        ## find the column names that are a mean
        keep1 <- grep("mean",colnames(trainData_X_test))
        ## find the column names that are a standard deviation and add them to the list
        keep2 <- grep("std",colnames(trainData_X_test))
        ## make a list of column names to keep, and sort it neatly
        keep <- append(keep1, keep2)
        keep <- sort(keep)
        ## drop all other measurements
        trainData_X_test <- trainData_X_test[keep]
        
        ## Add the measurements to the dataSet
        dataSet2 <- cbind(dataSet2, trainData_X_test)
        rm("trainData_X_test")
        
        ## load the activity descriptions
        if(!exists("activity_labels")){
                labels <- read.table("./UCI HAR\ Dataset/activity_labels.txt")
        }
        
        dataSet2$Activity <- as.factor(dataSet2$Activity)
        levels(dataSet2$Activity) <- levels(labels$V2)
        
        
        ## Store the final clean data-set
        dataSet <- rbind(dataSet, dataSet2)
        write.table(dataSet, "tidyset.txt", row.names=FALSE)
        
}