Getting and Cleaning Data: Course Project
=========================================

Introduction
------------
This repository contains my work for the course project for the Coursera course "Getting and Cleaning data", part of the Data Science specialization.
What follows first are my notes on the original data.

About the raw data
------------------

All data is found in the data directory.  Within the data directory, there are two further subdirectories, test and train.
Information on all features (561 of them) can be found in features.txt.
The activity labels are in the activity_labels.txt file.

The training and test subdirectories hold three relevant files each.  Subject_text.txt and Subject_train.txt show the subjects taking part in the data set.  X_test.txt provides information on the feature measurements themselves, and y_test.txt and y_train.txt provide information on the activities.

About the script and the tidy dataset
-------------------------------------
I created a script called run_analysis.R which will reads the relevant files, creates a merged data set, and modifies the feature names for readibility.  

The following process is followed:
* Load the dplyr package
* Read in the activity labels and the features list
* Clean up feature names prior to using as variable names.  Variable names were chosen to provide readibility, and so may differ from some normal conventions, but largely follow the Google R Code Guide.  Initial part is time or freq, which are the two dimensions for the measurements. Variable names then continue as Pascal Case for readibility over multiple words.  Finally, _X, _Y, or _Z is used to indicate the axis of the variable.
* Test data is read in, and the Subject and Activity information is merged, keeping the Activity label instead of the ID
* Activity name is then factorized
* The features are read in and assigned to the cleaned up variable names, and then merged with into our other information
* The same procedure is then followed with the train information
* The train and test data is finally combined, and then filtered to include measures that include std or mean, while excluded those that contain meanfreq, gravitymean or angle
* After cleaning of the workspace, the data is averaged by SubjectID and Activity
* The final resulting table is output to output.txt

Prerequisites for this script:

1. the UCI HAR Dataset must be extracted and placed in the data folder in the working directory
2. the train and test data must remain in their respective directories within the data folder.

About the Code Book
-------------------
The CodeBook.md file explains more about the individual variables used.