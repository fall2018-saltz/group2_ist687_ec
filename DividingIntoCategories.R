
convert<-function(vec)
{
  vBuckets <- replicate(length(vec), "Low")
  vBuckets[vec > 3] <- "High"
  return(vBuckets)
  
}

convert1<-function(vec)
{
  q <- quantile(vec, c(0.4, 0.6))
  vBuckets <- replicate(length(vec), "Average")
  vBuckets[vec <= q[1]] <- "Low"
  vBuckets[vec > q[2]] <- "High"
  return(vBuckets)
  
}

convert2<-function(vec)
{
  q <- quantile(vec, c(0.4, 0.6),type=1)
  vBuckets <- replicate(length(vec), "Average")
  vBuckets[vec <= q[1]] <- "Early"
  vBuckets[vec > q[2]] <- "Late"
  return(vBuckets)
  
}

satisfactionSurveyF$Satisfaction<-convert(satisfactionSurveyF$Satisfaction)
satisfactionSurveyF$Age<-convert1(satisfactionSurveyF$Age)
satisfactionSurveyF$Price.Sensitivity<-convert1(satisfactionSurveyF$Price.Sensitivity)
satisfactionSurveyF$Year.of.First.Flight<-convert1(satisfactionSurveyF$Year.of.First.Flight)
satisfactionSurveyF$No.of.Flights.p.a.<-convert1(satisfactionSurveyF$No.of.Flights.p.a.)
satisfactionSurveyF$Percentage.of.Flight.with.other.Airlines<-convert1(satisfactionSurveyF$Percentage.of.Flight.with.other.Airlines)
satisfactionSurveyF$No.of.other.Loyalty.Cards<-convert1(satisfactionSurveyF$No.of.other.Loyalty.Cards)
satisfactionSurveyF$Shopping.Amount.at.Airport<-convert1(satisfactionSurveyF$Shopping.Amount.at.Airport)
satisfactionSurveyF$Eating.and.Drinking.at.Airport<-convert1(satisfactionSurveyF$Eating.and.Drinking.at.Airport)
satisfactionSurveyF$Flight.date<-convert2(satisfactionSurveyF$Flight.date)
satisfactionSurveyF$Day.of.Month<-convert2(satisfactionSurveyF$Day.of.Month)
satisfactionSurveyF$Scheduled.Departure.Hour<-convert2(satisfactionSurveyF$Scheduled.Departure.Hour)
satisfactionSurveyF$Departure.Delay.in.Minutes<-convert1(satisfactionSurveyF$Departure.Delay.in.Minutes)
satisfactionSurveyF$Arrival.Delay.in.Minutes<-convert1(satisfactionSurveyF$Arrival.Delay.in.Minutes)
satisfactionSurveyF$Flight.time.in.minutes<-convert1(satisfactionSurveyF$Flight.time.in.minutes)
satisfactionSurveyF$Flight.Distance<-convert1(satisfactionSurveyF$Flight.Distance)
