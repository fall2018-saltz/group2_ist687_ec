
str(ss_date)
m<-lm(formula=as.numeric(Satisfaction)~.,data=ss_date,na.action=na.omit)
summary(m)
