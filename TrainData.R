
randIndex<-  sample(1:dim(satisfactionSurveyF2)[1])
cutPoint2_3 <- floor(2*dim(satisfactionSurveyF2)[1]/3)
trainData<- satisfactionSurveyF2[randIndex[1:cutPoint2_3],]
trainData


