Samsung_Data_Project
====================

Analysis script for analyzing wearable Samsung Galaxy S smartphone data

The script run_analysis() contained in this repo helps to summarize the raw Samsung Galaxy S SMartphone data collected by Reyes-Ortiz et al. in their work: "Human Activity Recognition Using Smartphones Dataset: Version 1.0"

To run:
Be sure that the data files are structured as in Reyes-Ortiz et al. i.e. be sure that there are two subfolders containing the test and training data that are named "test" and "train" respectively. From the present working directory, the following files must be available at these locations:
./test/X_test.txt - test set data
./test/Y_test.txt - test set labels
./test/subject_test.txt - test set subject list

./train/X_train.txt - training set data
./train/Y_train.txt - training set labels
./train/subject_train.txt - traing set subject list

./features.txt - feature names file

As long as these files are all present in this structure, all you need to do is source the run_analysis.R file into R, make sure your present working directory is set in R to where the data are and then type: run_analysis()

Output:
The program will write a file called Samsung_Tidy_Output.txt to your present working directory which is a space delimited file containing the the average of each variable for each activity and each subject. (A full description of variables can be found in the CodeBook.md file)
