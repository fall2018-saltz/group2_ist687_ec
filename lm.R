
str(ss_date)
m<-lm(formula=as.numeric(Satisfaction)~Airline.Status+Age+Gender+Price.Sensitivity+No.of.Flights.per.annum+
Percentage.of.Flight.with.other.Airlines+Type.of.Travel+ No.of.other.Loyalty.Cards+Shopping.Amount.at.Airport+
Eating.and.Drinking.at.Airport+Class+Day.of.Month
,data=ss_date,na.action=na.omit)
summary(m)

m1<-lm(formula=as.numeric(Satisfaction)~Flight.date,data=ss_date)
