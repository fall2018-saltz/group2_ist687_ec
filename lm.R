
str(ss_date)
m<-lm(formula=as.numeric(Satisfaction)~Airline.Status+Age+Gender+Price.Sensitivity+No.of.Flights.per.annum ,data=ss_date,na.action=na.omit)
summary(m)
