GettingCleaningDataProject
==========================

This repository contains the files for the Getting and Cleaning Data project.
  * read me.md: this file
  * run_analysis.R: the R code that manipulates the data and extracts the cleaned data sets:
    -samsungAllData.txt:
      * all columns of the original file with mean or std within their names.
      * subject: subject number (1..30) that realized an activity while the sample was taken.
      * activity: name of the activity the subject was performing while the sample was taken.
    -samsungAllAggData.txt:
      Summary information of the samsungAllData.txt by subject/activity
      * Same number of columns and in same positions.
      * Each data point corresponds to the mean of all the observations of all data points
        of the corresponding subject and activity of the original data set.
  * CodeBook.md: Code book for the above files (the share the same code book as one is the summary of the other.
  * samsungAllData.txt: described above.
  * samsungAllAggData.txt: described above.

