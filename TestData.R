
randIndex<-  sample(1:dim(satisfactionSurveyF3)[1])
cutPoint2_3 <- floor(2*dim(satisfactionSurveyF3)[1]/3)
testData<- satisfactionSurveyF3[randIndex[(cutPoint2_3+1):dim(satisfactionSurveyF3)[1]],]
testData

