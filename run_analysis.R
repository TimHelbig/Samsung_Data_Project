run_analysis <- function(){
  #read and merge test_set data into a data frame with labels and subject names
  test_data <- read.table("./test/X_test.txt")
  test_labels <- read.table("./test/Y_test.txt")
  test_subjects <- read.table("./test/subject_test.txt")
  full_test_data <- cbind(test_subjects, test_labels, test_data)
  
  #read and merge training_set data into a data frame with labels and subject names
  train_data <- read.table("./train/X_train.txt")
  train_labels <- read.table("./train/Y_train.txt")
  train_subjects <- read.table("./train/subject_train.txt")
  full_train_data <- cbind(train_subjects, train_labels, train_data)
  
  #merge training and test sets into one large data set
  full_data_set <- rbind(full_test_data, full_train_data)
  
  #reading in variable names into data_frame
  varnames <- read.table("features.txt", as.is=c(2))
  full_varnames <- c("subject", "activity_label", varnames[,2])
  names(full_data_set) <- full_varnames
  
  #extract only the data on mean and standard deviation of each measurement
  #I'm sure we're supposed to do this with regular expressions but I don't know how yet
  #so I'm just hardcoding the columns to keep
  mean_and_std_cols <- c(-1:6,41:46,81:86,121:126,161:166,201:202,214:215,227:228,
                         240:241,253:254,266:271,294:296,345:350,373:375,424:429,
                         452:454,503:504,516:517,529:530,539,542:543,552)
  corrected_mean_and_std_cols <- mean_and_std_cols + 2
  full_data_means_and_stds <- full_data_set[,corrected_mean_and_std_cols]
  head(full_data_means_and_stds)
  
  #Labeling of the activity names
  for(i in seq(along=full_data_means_and_stds[,2])){
    if(full_data_means_and_stds[i,2] == 1) full_data_means_and_stds[i,2] <- "Walking"
    else if(full_data_means_and_stds[i,2] == 2) full_data_means_and_stds[i,2] <- "Walking_Upstairs"
    else if(full_data_means_and_stds[i,2] == 3) full_data_means_and_stds[i,2] <- "Walking_Downstairs"
    else if(full_data_means_and_stds[i,2] == 4) full_data_means_and_stds[i,2] <- "Sitting"
    else if(full_data_means_and_stds[i,2] == 5) full_data_means_and_stds[i,2] <- "Standing"
    else if(full_data_means_and_stds[i,2] == 6) full_data_means_and_stds[i,2] <- "Laying"
  }
  
  #Splitting of the dataset by subject and then by activity; finding the mean of 
  #each variable within each subject/activity combination; merging the results back
  #into a final output dataframe
  subject_split <- split(full_data_means_and_stds, full_data_means_and_stds$subject)
  output_df = data.frame()
  for(i in seq(along=subject_split)){
    subject_temp <- subject_split[[i]]
    activity_split <- sapply(split(subject_temp,subject_temp$activity_label), function(x) colMeans(x[,-2:-1]))
    activity_split_transpose <- t(activity_split)
    activity_label <- rownames(activity_split_transpose)
    subject <- rep(i, nrow(activity_split_transpose))
    split_w_names_back <- cbind(subject, activity_label, activity_split_transpose)
    sub_act_df <- data.frame(split_w_names_back)
    output_df <- rbind(output_df, sub_act_df)
  }
  
  #Outputting of final dataframe into a space-delimited text file
  write.table(output_df, file="Samsung_Tidy_Output.txt", row.names=FALSE)
}
