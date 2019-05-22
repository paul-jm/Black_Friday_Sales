mae<-function(real, predicted){ # Sirio really likes it
  return(mean(abs(real-predicted)))
}

mape<-function(real,predicted){ # Standard relative error
  return(mean(abs((real-predicted)/real)))
}

rmse<-function(real,predicted){ # It's actually the standard
  return(sqrt(mean((real-predicted)^2))) # R2 not used in machine learning in linear modeling framework
}

# r part : used for partitioning, very low-level package
# randomForest; ranger is also a faster package
# xgboost : standard for gradient boosting
# e1071 : powerful for SVM
# nnet : simple feed forward neural network (Overfits?)
# caret :unified framework, and installs all the dependencies and it's cool