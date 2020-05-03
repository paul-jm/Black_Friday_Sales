packages_list <- c('data.table',
                   'lubridate',
                   'ggplot2',
                   'ggiraph',
                   'ggthemes',
                   'tidyverse',
                   'caret',
                   'rpart.plot',
                   'partykit', 
                   'randomForest',
                   'xgboost',
                   'MASS',
                   'visNetwork',
                   'sparkline',
                   'glmnet',
                   'scales',
                   'gridExtra',
                   'leaflet',
                   'corrplot',
                   'psych',
                   'MLmetrics',
                   'class',
                   'rpart',
                   'ranger',
                   'dplyr',
                   'mlbench',
                   'Hmisc',
                   'grid',
                   'reshape2',
                   'formattable',
                   'moments',
                   'datetime',
                   'DescTools'
                   )


for (i in packages_list){
  if(!i%in%installed.packages()){
    install.packages(i, dependencies = TRUE, repos = "http://cran.us.r-project.org")
    library(i, character.only = TRUE)
    print(paste0(i, ' has been installed'))
  } else {
    print(paste0(i, ' is already installed'))
    library(i, character.only = TRUE)
  }
}
