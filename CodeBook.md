Code Book
=========

This document describes the variables of the samsungAllData and samsungAllAggData files of the Getting and Cleaning Data project.  The source data is located in

    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

All variables retain their names from the original data set.
  
samsungAllData.txt
------------------

  We extracted all columns that contained "mean" or "std" in their name.  Variables were unaltered.
  We added two columns, subject and activity, to associate each original data point
  with its subject and the activity he/she was realizing when the data point was taken.

  * Added variables
    - subject: subject number that realized an activity while the sample was taken (1..30).
    - activity: name of the activity the subject was performing while the sample was taken (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING).
   
  * Mean Variables (all floating point numbers).  The number in each item corresponds to the column position in the original data set.
    - 1 tBodyAcc-mean()-X
    - 2 tBodyAcc-mean()-Y
    - 3 tBodyAcc-mean()-Z
    - 41 tGravityAcc-mean()-X
    - 42 tGravityAcc-mean()-Y
    - 43 tGravityAcc-mean()-Z
    - 81 tBodyAccJerk-mean()-X
    - 82 tBodyAccJerk-mean()-Y
    - 83 tBodyAccJerk-mean()-Z
    - 121 tBodyGyro-mean()-X
    - 122 tBodyGyro-mean()-Y
    - 123 tBodyGyro-mean()-Z
    - 161 tBodyGyroJerk-mean()-X
    - 162 tBodyGyroJerk-mean()-Y
    - 163 tBodyGyroJerk-mean()-Z
    - 201 tBodyAccMag-mean()
    - 214 tGravityAccMag-mean()
    - 227 tBodyAccJerkMag-mean()
    - 240 tBodyGyroMag-mean()
    - 253 tBodyGyroJerkMag-mean()
    - 266 fBodyAcc-mean()-X
    - 267 fBodyAcc-mean()-Y
    - 268 fBodyAcc-mean()-Z
    - 294 fBodyAcc-meanFreq()-X
    - 295 fBodyAcc-meanFreq()-Y
    - 296 fBodyAcc-meanFreq()-Z
    - 345 fBodyAccJerk-mean()-X
    - 346 fBodyAccJerk-mean()-Y
    - 347 fBodyAccJerk-mean()-Z
    - 373 fBodyAccJerk-meanFreq()-X
    - 374 fBodyAccJerk-meanFreq()-Y
    - 375 fBodyAccJerk-meanFreq()-Z
    - 424 fBodyGyro-mean()-X
    - 425 fBodyGyro-mean()-Y
    - 426 fBodyGyro-mean()-Z
    - 452 fBodyGyro-meanFreq()-X
    - 453 fBodyGyro-meanFreq()-Y
    - 454 fBodyGyro-meanFreq()-Z
    - 503 fBodyAccMag-mean()
    - 513 fBodyAccMag-meanFreq()
    - 516 fBodyBodyAccJerkMag-mean()
    - 526 fBodyBodyAccJerkMag-meanFreq()
    - 529 fBodyBodyGyroMag-mean()
    - 539 fBodyBodyGyroMag-meanFreq()
    - 542 fBodyBodyGyroJerkMag-mean()
    - 552 fBodyBodyGyroJerkMag-meanFreq()
    - 555 angle(tBodyAccMean,gravity)
    - 556 angle(tBodyAccJerkMean),gravityMean)
    - 557 angle(tBodyGyroMean,gravityMean)
    - 558 angle(tBodyGyroJerkMean,gravityMean)
    - 559 angle(X,gravityMean)
    - 560 angle(Y,gravityMean)
    - 561 angle(Z,gravityMean)

  * Standard Deviation Variables (all floating point numbers).  The number in each item corresponds to the column position in the original data set.
    - 4 tBodyAcc-std()-X
    - 5 tBodyAcc-std()-Y
    - 6 tBodyAcc-std()-
    - 44 tGravityAcc-std()-X
    - 45 tGravityAcc-std()-Y
    - 46 tGravityAcc-std()-Z
    - 84 tBodyAccJerk-std()-X
    - 85 tBodyAccJerk-std()-Y
    - 86 tBodyAccJerk-std()-Z
    - 124 tBodyGyro-std()-X
    - 125 tBodyGyro-std()-Y
    - 126 tBodyGyro-std()-Z
    - 164 tBodyGyroJerk-std()-X
    - 165 tBodyGyroJerk-std()-Y
    - 166 tBodyGyroJerk-std()-Z
    - 202 tBodyAccMag-std()
    - 215 tGravityAccMag-std()
    - 228 tBodyAccJerkMag-std()
    - 241 tBodyGyroMag-std()
    - 254 tBodyGyroJerkMag-std()
    - 269 fBodyAcc-std()-X
    - 270 fBodyAcc-std()-Y
    - 271 fBodyAcc-std()-Z
    - 348 fBodyAccJerk-std()-X
    - 349 fBodyAccJerk-std()-Y
    - 350 fBodyAccJerk-std()-Z
    - 427 fBodyGyro-std()-X
    - 428 fBodyGyro-std()-Y
    - 429 fBodyGyro-std()-Z
    - 504 fBodyAccMag-std()
    - 517 fBodyBodyAccJerkMag-std()
    - 530 fBodyBodyGyroMag-std()
    - 543 fBodyBodyGyroJerkMag-std()

samsungAllAggData.txt
---------------------

All variables are exactly as in the samsungAllData.txt, but they contain summary information (mean) of all corresponding records in the original file.  Aggregation is by subject/activity.
