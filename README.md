# Getting-and-Cleaning-Data-Course-Project

README for run_analysis.R 
Coursera Course Project
Getting and Cleaning Data, November 22, 2015


Download data and unzip files to ensure data is in your working directory. This is not included in the run-analysis script since the assignment assumes that the data is already in your working directory.
        
        if (!file.exists("./data")) {
          dir.create("data")
        }
    fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
    download.file(fileUrl, destfile = "./data.zip", method = "curl")
    list.files("./data.zip")
    dateDownloaded <- date()   
    
The script reads the data, concatenates the different sets (train, test), and combines the sets to make one data frame. Applying column names from the features.txt file to provide accurate and descriptive column names.

Activities are designated by number in the raw data set, run_analysis applies descriptive labeling of activities (Walking, running, etc.) for esier deciphering.

run-analysis creates a final data set that provides the average of each variable for each subject (1-30) in each activity.("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

see CodeBook.md for detailed data descriptions

