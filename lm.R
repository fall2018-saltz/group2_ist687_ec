
str(ss_date)
m<-lm(formula=as.numeric(Satisfaction)~Airline.Status+Age,data=ss_date,na.action=na.omit)
summary(m)
