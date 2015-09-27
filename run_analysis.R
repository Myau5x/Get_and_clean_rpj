library(dplyr)
x_train <- read.csv('train\\X_train.txt', sep = '',header = FALSE)
y_train <- read.csv('train\\y_train.txt', sep = '',header = FALSE)
subj_train <- read.csv('train\\subject_train.txt', sep = '',header = FALSE)
x_test <- read.csv('test\\X_test.txt', sep = '',header = FALSE)
y_test <- read.csv('test\\y_test.txt', sep = '',header = FALSE)
subj_test <- read.csv('test\\subject_test.txt', sep = '',header = FALSE)
feature <- read.csv('features.txt', sep = '', header = FALSE)
mean_v <- grep('mean()', feature$V2, fixed = T)
std_v <- grep('std', feature$V2)
activity <- read.csv('activity_labels.txt', sep = ' ',header = FALSE)
x<- rbind(select(x_train, c(mean_v,std_v)),select(x_test, c(mean_v,std_v)))
y<- rbind(y_train,y_test)
y<- left_join(y, activity)
subj <- rbind(subj_train, subj_test)
new_frame <- cbind(subj,y[,2],x)
features <- feature$V2[c(mean_v,std_v)]
features <- sub('f',"FFT_", features)
features <- sub("Gyro", "_Angular Velocity")
features <- sub("Acc", "_Acceleration", features)
features <- sub("Mag", "_Magnitude", features)

colnames(new_frame) <- c("subject", "activity", as.character(features))
### I should group by activity & subj (1,2)  and summarize means and may be reshape
tidy <- new_frame %>% group_by(subject, activity) %>%summarise_each(funs(mean))
## write_table
write.table(tidy, "tidydata.txt",row.names = FALSE)

