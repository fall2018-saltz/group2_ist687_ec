
library("randomForest")
library("pROC")
library("caret")
library("ggplot2")

rf<-randomForest(Satisfaction~Age+Airline.Status+Gender+
                   Type.of.Travel+
                   +Class+
                   +Arrival.Delay.in.Minutes+
                   +Flight.cancelled,data=trainData1,mtry=6,importance=TRUE,ntree=500)

#?rf()
rf

rfTrainPrediction<-predict(rf,trainData1)
rfTrainConfMatrix<-confusionMatrix(rfTrainPrediction,trainData1$Satisfaction)


rfTestPrediction<-predict(rf,testData1)
rfTestConfMatrix<-confusionMatrix(rfTestPrediction,testData1$Satisfaction)
rfTestConfMatrix

#rfTestPredictionprob<-predict(rf,testData, type="prob")[,2]
#roc(as.numeric(testData$Satisfaction), as.numeric(as.matrix(rfTestPredictionprob)))$auc

#plot(rf)
#importance(rf)

#varImpPlot(rf,sort=TRUE)
#varUsed(rf)

