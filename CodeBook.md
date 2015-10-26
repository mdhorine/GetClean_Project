CodeBook for the tidy dataset
=============================

Data source
-----------
This dataset is derived from the "Human Activity Recognition Using Smartphones Data Set" which was originally made avaiable here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Feature Selection 
-----------------
I refer you to the README and features.txt files in the original dataset to learn more about the feature selection for this dataset. And there you will find the follow description:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

In order to "Extract only the measurements on the mean and standard deviation for each measurement", measurements were filtered to include those that included the word std or mean, but exclude those that included angle, gravity mean, or mean freq, which were not required.

Variables were renamed to provide maximum readibility.  Initial part of the variable name is time or freq, which are the two dimensions. Variable names then continue as Pascal Case for readibility over multiple words.  Finally, _X, _Y, or _Z is used to indicate the axis of the variable.

Please see the original documentation for information on each of the individual values.

The set of variables that were estimated (and kept for this assignment) from these signals are those that include: 

* mean(): Mean value
* std(): Standard deviation

Other estimates have been removed for the purpose of this excercise, including those including the terms meanfreq, gravitymean, and angle.

Note: features are normalized and bounded within [-1,1].

The resulting variable names are of the following form: time_BodyAccMean_X, which corresponds to the mean value of tBodyAccMEan-X by subject.

The final list of included variables is as follows:
* SubjectID                    
* ActivityName                 
* time_BodyAccMean_X          
* time_BodyAccMean_Y           
* time_BodyAccMean_Z           
* time_BodyAccStd_X           
* time_BodyAccStd_Y            
* time_BodyAccStd_Z            
* time_GravityAccMean_X       
* time_GravityAccMean_Y        
* time_GravityAccMean_Z        
* time_GravityAccStd_X        
* time_GravityAccStd_Y         
* time_GravityAccStd_Z         
* time_BodyAccJerkMean_X      
* time_BodyAccJerkMean_Y       
* time_BodyAccJerkMean_Z       
* time_BodyAccJerkStd_X       
* time_BodyAccJerkStd_Y        
* time_BodyAccJerkStd_Z        
* time_BodyGyroMean_X         
* time_BodyGyroMean_Y          
* time_BodyGyroMean_Z          
* time_BodyGyroStd_X          
* time_BodyGyroStd_Y           
* time_BodyGyroStd_Z           
* time_BodyGyroJerkMean_X     
* time_BodyGyroJerkMean_Y      
* time_BodyGyroJerkMean_Z      
* time_BodyGyroJerkStd_X      
* time_BodyGyroJerkStd_Y       
* time_BodyGyroJerkStd_Z       
* time_BodyAccMagMean         
* time_BodyAccMagStd           
* time_GravityAccMagMean       
* time_GravityAccMagStd       
* time_BodyAccJerkMagMean      
* time_BodyAccJerkMagStd       
* time_BodyGyroMagMean        
* time_BodyGyroMagStd          
* time_BodyGyroJerkMagMean     
* time_BodyGyroJerkMagStd     
* freq_BodyAccMean_X           
* freq_BodyAccMean_Y           
* freq_BodyAccMean_Z          
* freq_BodyAccStd_X            
* freq_BodyAccStd_Y            
* freq_BodyAccStd_Z           
* freq_BodyAccJerkMean_X       
* freq_BodyAccJerkMean_Y       
* freq_BodyAccJerkMean_Z      
* freq_BodyAccJerkStd_X        
* freq_BodyAccJerkStd_Y        
* freq_BodyAccJerkStd_Z       
* freq_BodyGyroMean_X          
* freq_BodyGyroMean_Y          
* freq_BodyGyroMean_Z         
* freq_BodyGyroStd_X           
* freq_BodyGyroStd_Y           
* freq_BodyGyroStd_Z          
* freq_BodyAccMagMean          
* freq_BodyAccMagStd           
* freq_BodyBodyAccJerkMagMean 
* freq_BodyBodyAccJerkMagStd   
* freq_BodyBodyGyroMagMean     
* freq_BodyBodyGyroMagStd     
* freq_BodyBodyGyroJerkMagMean 
* freq_BodyBodyGyroJerkMagStd 