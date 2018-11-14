
str(ss_date)
m<-lm(formula=as.numeric(Satisfaction)~.,data=ss2,na.action=na.omit)
summary(m)
