#Code Book
`x_test` - data contains measurement from "test" subfolder

`y_test` - data contains activity's number from "test" subfolder

`subj_test` - data contains subject's number from "test" subfolder

`x_train` - data contains measurement from "train" subfolder

`y_train` - data contains activity's number from "train" subfolder

`subj_train` - data contains subject's number from "train" subfolder

`feature` - contains names of features that was measured

`activity` - contains names of activity

`mean_v` - numeric vector of features that contains  measurements on the mean  for some measurement. 

`std_v`  - numeric vector of  features that contains  measurements on the standart deviation  for some measurement

`features` - contains names of features that means only measurements on the mean  or standart deviation for some measurement. 

`x` - data set is merged from `x_test` and `x_train`

`y` -  data set is merged from `y_test` and `y_train`

`subj` - data set is merged from `subj_test` and `subj_train`

`new_frame` - data set contains `x`,`y`, `subj` like columns and `feature` like columns names.

`tidy` - data set with the average of each variable for each activity and each subject.
