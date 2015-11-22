# A full description is available at the site where the data was obtained:  
# http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
# 
# Here are the data for the project: 
#   
#   https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
# 
# You should create one R script called run_analysis.R that does the following. 
# Merges the training and the test sets to create one data set.
# Appropriately labels the data set with descriptive variable names.
    
    features <- read.table("./UCI HAR Dataset/features.txt")
    activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
    
    xtestdata <-read.table("./UCI HAR Dataset/test/X_test.txt")
    names(xtestdata) <- as.character(features$V2)
    ytestdata <-read.table("./UCI HAR Dataset/test/y_test.txt")
    names(ytestdata) <- "activitylabels"
    subtestdata <-read.table("./UCI HAR Dataset/test/subject_test.txt")
    names(subtestdata) <- "subject_id"
    testdata <- cbind(subtestdata,ytestdata,xtestdata)
    
    xtraindata <-read.table("./UCI HAR Dataset/train/X_train.txt")
    names(xtraindata) <- as.character(features$V2)
    ytraindata <-read.table("./UCI HAR Dataset/train/y_train.txt")
    names(ytraindata) <- "activitylabels"
    subtraindata <-read.table("./UCI HAR Dataset/train/subject_train.txt")
    names(subtraindata) <- "subject_id"
    traindata <- cbind(subtraindata,ytraindata,xtraindata)
    
    data <- rbind(traindata, testdata)
    
# Extracts only the measurements on the mean and standard deviation for each measurement. 
    data_ms <- data[,grepl("mean()", colnames(data)) | grepl("std()", colnames(data)) | grepl("subject", colnames(data)) | grepl("activity", colnames(data))]
    
# Uses descriptive activity names to name the activities in the data set
    data_ms <- mutate(data_ms, activity=factor(activitylabels, labels = c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")))
    
# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    data_mstidy <- group_by(data_ms, subject_id, activity)
    final_sum <- summarize_each(data_mstidy, funs(mean))
    final <- select(final_sum, -(activitylabels))
    
   write.table(final, file="finaldata.txt", row.names = FALSE)
    
 
    
    