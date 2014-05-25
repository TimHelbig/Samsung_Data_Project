This file describes the data tranformations and variables of the ouput data of the run_analysis.R script contained in this repo.

Tranformations to original Reyes-Ortiz et al. data:
1. Variables not describing either the mean or standard deviations of measurements were discarded. This led to a final number of measurement related variables of 77 (79 if you include subject and activity)
2. The numbers designated in the original dataset for activity name were discarded and replaced with more descriptive titles:
1 -> WALKING
2 -> WALKING_UPSTAIRS
3 -> WALKING_DOWNSTAIRS
4 -> SITTING
5 -> STANDING
6 -> LAYING
3. Data for each variable was averaged for each activity for each subject such that 180 rows of data remain (6 activity observations for each of 30 subjects)
 
Output Variables:
The 180 rows output in Samsung_Tidy_Output.txt each contain the following 79 variables

"1" "subject" - 1:30 designation of the subject id
"2" "activity_label" - Descriptive designation of the activity the subject was performing during the measurement sample
**The rest of the variable descriptions can be found in the original Reyes-Ortiz et al. file "features_info.txt" contained within this repository
"3" "tBodyAcc.mean...X"
"4" "tBodyAcc.mean...Y"
"5" "tBodyAcc.mean...Z"
"6" "tBodyAcc.std...X"
"7" "tBodyAcc.std...Y"
"8" "tBodyAcc.std...Z"
"9" "tGravityAcc.mean...X"
"10" "tGravityAcc.mean...Y"
"11" "tGravityAcc.mean...Z"
"12" "tGravityAcc.std...X"
"13" "tGravityAcc.std...Y"
"14" "tGravityAcc.std...Z"
"15" "tBodyAccJerk.mean...X"
"16" "tBodyAccJerk.mean...Y"
"17" "tBodyAccJerk.mean...Z"
"18" "tBodyAccJerk.std...X"
"19" "tBodyAccJerk.std...Y"
"20" "tBodyAccJerk.std...Z"
"21" "tBodyGyro.mean...X"
"22" "tBodyGyro.mean...Y"
"23" "tBodyGyro.mean...Z"
"24" "tBodyGyro.std...X"
"25" "tBodyGyro.std...Y"
"26" "tBodyGyro.std...Z"
"27" "tBodyGyroJerk.mean...X"
"28" "tBodyGyroJerk.mean...Y"
"29" "tBodyGyroJerk.mean...Z"
"30" "tBodyGyroJerk.std...X"
"31" "tBodyGyroJerk.std...Y"
"32" "tBodyGyroJerk.std...Z"
"33" "tBodyAccMag.mean.."
"34" "tBodyAccMag.std.."
"35" "tGravityAccMag.mean.."
"36" "tGravityAccMag.std.."
"37" "tBodyAccJerkMag.mean.."
"38" "tBodyAccJerkMag.std.."
"39" "tBodyGyroMag.mean.."
"40" "tBodyGyroMag.std.."
"41" "tBodyGyroJerkMag.mean.."
"42" "tBodyGyroJerkMag.std.."
"43" "fBodyAcc.mean...X"
"44" "fBodyAcc.mean...Y"
"45" "fBodyAcc.mean...Z"
"46" "fBodyAcc.std...X"
"47" "fBodyAcc.std...Y"
"48" "fBodyAcc.std...Z"
"49" "fBodyAcc.meanFreq...X"
"50" "fBodyAcc.meanFreq...Y"
"51" "fBodyAcc.meanFreq...Z"
"52" "fBodyAccJerk.mean...X"
"53" "fBodyAccJerk.mean...Y"
"54" "fBodyAccJerk.mean...Z"
"55" "fBodyAccJerk.std...X"
"56" "fBodyAccJerk.std...Y"
"57" "fBodyAccJerk.std...Z"
"58" "fBodyAccJerk.meanFreq...X"
"59" "fBodyAccJerk.meanFreq...Y"
"60" "fBodyAccJerk.meanFreq...Z"
"61" "fBodyGyro.mean...X"
"62" "fBodyGyro.mean...Y"
"63" "fBodyGyro.mean...Z"
"64" "fBodyGyro.std...X"
"65" "fBodyGyro.std...Y"
"66" "fBodyGyro.std...Z"
"67" "fBodyGyro.meanFreq...X"
"68" "fBodyGyro.meanFreq...Y"
"69" "fBodyGyro.meanFreq...Z"
"70" "fBodyAccMag.mean.."
"71" "fBodyAccMag.std.."
"72" "fBodyBodyAccJerkMag.mean.."
"73" "fBodyBodyAccJerkMag.std.."
"74" "fBodyBodyGyroMag.mean.."
"75" "fBodyBodyGyroMag.std.."
"76" "fBodyBodyGyroMag.meanFreq.."
"77" "fBodyBodyGyroJerkMag.mean.."
"78" "fBodyBodyGyroJerkMag.std.."
"79" "fBodyBodyGyroJerkMag.meanFreq.."
