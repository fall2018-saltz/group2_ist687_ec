
index<-which(!(satisfactionSurvey$Satisfaction %in%c("1","2","3","4","5")))
satisfactionSurvey<-satisfactionSurvey[-index,]
satisfactionSurvey$Satisfaction <- factor(c("1","2","3","4","5"))
