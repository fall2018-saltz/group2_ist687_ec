
m<-lm(formula=Satisfaction~Age+Gender+Airline.Status+Price.Sensitivity+Year.of.First.Flight+
        No.of.Flights.p.a.+Percentage.of.Flight.with.other.Airlines+Type.of.Travel+
        No.of.other.Loyalty.Cards+Shopping.Amount.at.Airport+Eating.and.Drinking.at.Airport+Class+
        Day.of.Month+Airline.Name+Scheduled.Departure.Hour+
        Departure.Delay.in.Minutes+Arrival.Delay.in.Minutes+Flight.time.in.minutes+
        Flight.Distance,data=satisfactionSurvey)
        
        
        
        
summary(m)
