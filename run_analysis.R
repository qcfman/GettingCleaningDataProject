## run_analysis.R
## ==============
## Transforms the Samsung data into tidy data

# Uncomment if you need these commands (or paste directly on the console)
# set the correct directory (in my computer, at least!
# setwd("C:/Users/Juan Carlos/Desktop/GettingCleaningData/analysis")

# load supporting data: features (titles of all main dataset columns), activity labels
# and the list of the numbers of all columns that we need: those with mean or std in their titles.
featuresDF <- read.table("features.txt")
usefulCols <- c(grep("mean", featuresDF[,2], fixed=FALSE),grep("std", featuresDF[,2], fixed=FALSE))
samsungAct <- read.table("activity_labels.txt")

# Loading of Train data, from the current directory
# We need to assemble it:
#   Load the main table, plus two supporting for activities and subjects
#   the name all columns, drop the ones we do not need and add activities and subjects
# Adds column names, activity (numbers) and subject information, and filters out unneeded columns
samsungTrainDF          <- read.table("X_train.txt")
samsungTrainActDF       <- read.table("y_train.txt")
samsungTrainSubjDF      <-read.table("subject_train.txt")
names(samsungTrainDF)   <- featuresDF[,2]
samsungTrainDF <- samsungTrainDF[usefulCols]
samsungTrainDF$activity <- samsungTrainActDF[,1]
samsungTrainDF$subject  <- samsungTrainSubjDF[,1]

# Loading of Test data, from the current directory
# We need to assemble it:
#   Load the main table, plus two supporting for activities and subjects
#   the name all columns, drop the ones we do not need and add activities and subjects
# Adds column names, activity (numbers) and subject information, and filters out unneeded columns
# Adds column names, activity (numbers) and subject information, and filters out unneeded columns
samsungTestDF          <- read.table("X_test.txt")
samsungTestActDF       <- read.table("y_test.txt")
samsungTestSubjDF      <-read.table("subject_test.txt")
names(samsungTestDF)   <- featuresDF[,2]
samsungTestDF <- samsungTestDF[usefulCols]
samsungTestDF$activity <- samsungTestActDF[,1]
samsungTestDF$subject  <- samsungTestSubjDF[,1]

# Combine both Test and Train data
samsungAllDF <- rbind(samsungTestDF,samsungTrainDF)

# Reorder the columns so that subject and activity are the first ones
NCols       <- dim(samsungAllDF)[2]
samsungAllDF <- samsungAllDF[c(NCols,NCols-1,1:(NCols-2))]

# Compute the summary-level data
samsungAllAggDF <- aggregate(samsungAllDF,by=list(samsungAllDF$subject,samsungAllDF$activity),FUN=mean,na.rm=TRUE)
samsungAllAggDF <- samsungAllAggDF[-c(1:2)]

#now replace the numeric activity by their pnemonic
samsungAllDF$activity <- samsungAct[samsungAllDF$activity,2]
samsungAllAggDF$activity <- samsungAct[samsungAllAggDF$activity,2]

# Save the files as txt (separator is tab) -- with headers and no row names
write.table(samsungAllDF, "samsungAllDF.txt", sep="\t",row.names=FALSE)
write.table(samsungAllAggDF, "samsungAllAggDF.txt", sep="\t",row.names=FALSE)

