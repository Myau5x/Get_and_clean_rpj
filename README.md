## README
### Load Data

I load data from train data set to `x_train`, `y_train` ,`subj_train`.
I load data from test data set to `x_test`, `y_test` ,`subj_test`
Also I load names of measurements and activities to `feature` and `activity`.

### Cleaning

To extracts only the measurements on the mean and standard deviation for each measurement  I find names and numbers of measurements in `feature` that contains "mean()" or "std".
I rename this name a few to make them more understandable.

Next I select columns from `x_train` and `x_test` according numbers from previous step  and bind those data frames together to new data frame `x`
Also I bind `y_train` and `y_test` and add names of activity to new data frame `y`.
And I bind `subj_train` and `subj_test` to `subj`.

Than I bind `subj`, `y[2]` (only activity names) and `x` to `new_frame`. And add columns names "subject", "activity" and features name.

### Summarize

To create final tidy dataset `tidy` I grouped `new_frame` by subject and activity and summarize using function `summarise_each(funs(mean))` that applies mean() to each column (by groups).