# this function determines five values for a column of a dataframe.
# five values are: mean, median, mode, quantiles, skewness 
# Here the column is TP from dataframe "LakeErie2.csv"

five<-function(x){
  rm.NA = TRUE
  mean = mean(x)
  print(mean)
  median = median(x)
  print(median)
  modeforTP <- table(as.vector(LakeErie2$TP))
  names(modeforTP)[modeforTP == max(modeforTP)]
  print(max(modeforTP))
  print(quantile(LakeErie2$TP, probs=c(.25, .75)))
  print(quantile)
  library(psych)
  skew(LakeErie2$TP)
}