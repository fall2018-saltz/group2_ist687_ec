
library(data.table)

library(dplyr)

index<-which(!(dateSatSurvey$Satisfaction %in% c(1,2,3,4,5)))
dateSatSurvey<-dateSatSurvey[-index,]
dateSatSurvey

any(is.NA(dateSatSurvey)
