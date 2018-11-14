
str(ss_date)
m<-lm(formula=as.numeric(Satisfaction)~Airline.Status+Age+Gender+Price.Sensitivity+No.of.Flights.per.annum+Percentage.of.Flight.with.other.Airlines+Type.of.Travel+ No.of.other.Loyalty.Cards     ,data=ss_date,na.action=na.omit)
summary(m)
