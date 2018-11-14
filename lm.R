

m<-lm(formula=as.numeric(Satisfaction)~Airline.Status+Age+Gender+Price.Sensitivity+No.of.Flights.per.annum+
Percentage.of.Flight.with.other.Airlines+Type.of.Travel+ No.of.other.Loyalty.Cards+Shopping.Amount.at.Airport+
Eating.and.Drinking.at.Airport+Class+Day.of.Month+Airline.Name+as.character(Origin.City)+as.character(Destination.City)+Scheduled.Departure.Hour
,data=ss_date,na.action=na.omit)
summary(m)

