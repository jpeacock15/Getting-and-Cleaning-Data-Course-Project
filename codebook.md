Project Description
Create a tidy data set with the mean of each variable for each subject and each activity.

Source & Raw Data
Full description of data at the website:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
Data for this project: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Creating Clean Tidy Data
The raw data was concatenated and labeled properly using the descriptions in features.txt. Then paired down to only include information about the mean and standard deviations. The activity labels were matched with the descriptive labels for easier reading.

Description of variables
Variables described by "Acc" are part of the triaxial acceleration measurements (with each direction, X, Y, Z composing the total acceleration) from the accelerometer (total acceleration) and the estimated body acceleration.

Variables described by "Gyro" are triaxial angular velocity from the gyroscope
They are all time and frequency domain variables from the accelerometer and gyroscope.

"subject_id"                      "activity"                        "tBodyAcc-mean()-X"              
"tBodyAcc-mean()-Y"               "tBodyAcc-mean()-Z"               "tBodyAcc-std()-X"               
"tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"                "tGravityAcc-mean()-X"           
"tGravityAcc-mean()-Y"            "tGravityAcc-mean()-Z"            "tGravityAcc-std()-X"            
"tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"             "tBodyAccJerk-mean()-X"          
"tBodyAccJerk-mean()-Y"           "tBodyAccJerk-mean()-Z"           "tBodyAccJerk-std()-X"           
"tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"            "tBodyGyro-mean()-X"             
"tBodyGyro-mean()-Y"              "tBodyGyro-mean()-Z"              "tBodyGyro-std()-X"              
"tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"               "tBodyGyroJerk-mean()-X"         
"tBodyGyroJerk-mean()-Y"          "tBodyGyroJerk-mean()-Z"          "tBodyGyroJerk-std()-X"          
"tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"           "tBodyAccMag-mean()"             
"tBodyAccMag-std()"               "tGravityAccMag-mean()"           "tGravityAccMag-std()"           
"tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"           "tBodyGyroMag-mean()"            
"tBodyGyroMag-std()"              "tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMag-std()"         
"fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"               "fBodyAcc-mean()-Z"              
"fBodyAcc-std()-X"                "fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
"fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"           "fBodyAcc-meanFreq()-Z"          
"fBodyAccJerk-mean()-X"           "fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"          
"fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"            "fBodyAccJerk-std()-Z"           
"fBodyAccJerk-meanFreq()-X"       "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
"fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"              "fBodyGyro-mean()-Z"             
"fBodyGyro-std()-X"               "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"              
"fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"          "fBodyGyro-meanFreq()-Z"         
"fBodyAccMag-mean()"              "fBodyAccMag-std()"               "fBodyAccMag-meanFreq()"         
"fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"       "fBodyBodyAccJerkMag-meanFreq()" 
"fBodyBodyGyroMag-mean()"         "fBodyBodyGyroMag-std()"          "fBodyBodyGyroMag-meanFreq()"    
"fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"      "fBodyBodyGyroJerkMag-meanFreq()"

