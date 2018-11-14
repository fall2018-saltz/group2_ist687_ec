
index<-which(!(ss1$Satisfaction %in%c("1","2","3","4","5")))
ss1<-ss1[-index,]
ss1$Satisfaction <- factor(c("1","2","3","4","5"))


