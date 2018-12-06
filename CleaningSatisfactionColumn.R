
index<-which(!(dateSatSurvey2$Satisfaction %in% c(1,2,3,4,5)))
dateSatSurvey2<-dateSatSurvey2[-index,]
satSurvey <- dateSatSurvey2
