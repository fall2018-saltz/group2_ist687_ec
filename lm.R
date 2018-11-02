
m<-lm(formula=as.numeric(Satisfaction)~as.numeric(Gender)+as.numeric(Airline.Status)+Age+Price.Sensitivity+Year.of.First.Flight+No.of.Flights.per.annum+Percentage.of.Flight.with.other.Airlines+as.numeric(Type.of.Travel)+No.of.other.Loyalty.Cards +Shopping.Amount.at.Airport+Eating.and.Drinking.at.Airport+as.numeric(Class)+as.numeric(Day.of.Month) +as.numeric(Flight.cancelled)+as.numeric(Flight.date)+as.numeric(Airline.Code)+as.numeric(Orgin.City)+as.numeric(Destination.City)+Scheduled.Departure.Hour+Flight.time.in.minutes+Arrival.Delay.in.Minutes,data=ss2,na.action=na.omit)
summary(m)
