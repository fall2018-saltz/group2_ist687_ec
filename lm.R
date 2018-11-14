
ss_date$Flight.cancelled<-as.factor(ss_date$Flight.cancelled)
m<-lm(formula=as.numeric(Satisfaction)~Airline.Status+Age+Gender+Price.Sensitivity+No.of.Flights.per.annum+
Percentage.of.Flight.with.other.Airlines+Type.of.Travel+ No.of.other.Loyalty.Cards+Shopping.Amount.at.Airport+
Eating.and.Drinking.at.Airport+Class+Day.of.Month+Airline.Name+Scheduled.Departure.Hour+Departure.Delay.in.Minutes+
Arrival.Delay.in.Minutes+Flight.cancelled 
,data=ss_date,na.action=na.omit)
summary(m)

