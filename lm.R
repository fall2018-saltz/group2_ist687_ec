
str(ss_date)
m<-lm(formula=as.numeric(Satisfaction)~Airline.Status+Age+Gender+Price.Sensitivity,data=ss_date,na.action=na.omit)
summary(m)
