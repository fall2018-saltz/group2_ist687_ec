
ss_date$Flight.cancelled<-factor(c("No","Yes"))
m<-lm(formula=as.numeric(Satisfaction)~Airline.Status+Age+Gender+Price.Sensitivity+No.of.Flights.per.annum+
Percentage.of.Flight.with.other.Airlines+Type.of.Travel+ No.of.other.Loyalty.Cards+Shopping.Amount.at.Airport+
Eating.and.Drinking.at.Airport+Class+Day.of.Month+Airline.Name+Scheduled.Departure.Hour+Departure.Delay.in.Minutes+
Arrival.Delay.in.Minutes+Flight.cancelled+Flight.time.in.minutes+Flight.Distance+Arr.Delay.greater.5.Mins 
,data=ss_date,na.action=na.omit)

m1<lm(formula=as.numeric(Satisfaction)~.,data=ss_date,na.action=na.omit)
summary(m1)

