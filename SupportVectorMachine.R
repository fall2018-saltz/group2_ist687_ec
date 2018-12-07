
# using ksvm to build a model
library("e1071")
library("kernlab")
library(gridExtra)

svmOutput  <- ksvm(Satisfaction~ Age+Gender+Type.of.Travel+Flight.cancelled+Airline.Status+Class+Arrival.Delay.in.Minutes, data=trainData, kernel= "rbfdot", kpar = "automatic", C = 5, cross = 3, prob.model = TRUE)

#stored ksvm output in svmOutput and print it
svmOutput 

#Using the predict( ) function to validate the model against test data 
svmPred <- predict(svmOutput, tesTData, type="votes")#Reviewing contents of svmPred using str and head

#Creating a confusion matrix with second row of svmPred to the contents of testData$happy variable

confMat<-data.frame(svmPred[1,],tesTData$Satisfaction)
confTab<-table(confMat)
confTab
