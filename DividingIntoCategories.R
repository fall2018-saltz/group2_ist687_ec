
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
satisfactionSurveyF <- satisfactionSurvey
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
satisfactionSurveyF$Satisfaction<-as.factor(satisfactionSurveyF$Satisfaction)
satisfactionSurveyF$Airline.Status<-as.factor(satisfactionSurveyF$Airline.Status)
satisfactionSurveyF$Age<-as.factor(satisfactionSurveyF$Age)
satisfactionSurveyF$Gender<-as.factor(satisfactionSurveyF$Gender)
satisfactionSurveyF$Price.Sensitivity<-as.factor(satisfactionSurveyF$Price.Sensitivity)
satisfactionSurveyF$Year.of.First.Flight<-as.factor(satisfactionSurveyF$Year.of.First.Flight)
satisfactionSurveyF$No.of.Flights.p.a.<-as.factor(satisfactionSurveyF$No.of.Flights.p.a.)
satisfactionSurveyF$Percentage.of.Flight.with.other.Airlines<-as.factor(satisfactionSurveyF$Percentage.of.Flight.with.other.Airlines)
satisfactionSurveyF$Type.of.Travel<-as.factor(satisfactionSurveyF$Type.of.Travel)
satisfactionSurveyF$Shopping.Amount.at.Airport<-as.factor(satisfactionSurveyF$Shopping.Amount.at.Airport)
satisfactionSurveyF$Eating.and.Drinking.at.Airport<-as.factor(satisfactionSurveyF$Eating.and.Drinking.at.Airport)
satisfactionSurveyF$Class<-as.factor(satisfactionSurveyF$Class)
satisfactionSurveyF$Day.of.Month<-as.factor(satisfactionSurveyF$Day.of.Month)
satisfactionSurveyF$Flight.date<-as.factor(satisfactionSurveyF$Flight.date)
satisfactionSurveyF$Airline.Code<-as.factor(satisfactionSurveyF$Airline.Code)
satisfactionSurveyF$Airline.Name<-as.factor(satisfactionSurveyF$Airline.Name)
satisfactionSurveyF$Origin.State<-as.factor(satisfactionSurveyF$Origin.State)
satisfactionSurveyF$Origin.City<-as.factor(satisfactionSurveyF$Origin.City)
satisfactionSurveyF$Destination.State<-as.factor(satisfactionSurveyF$Destination.State)
satisfactionSurveyF$Destination.City<-as.factor(satisfactionSurveyF$Destination.City)
satisfactionSurveyF$Scheduled.Departure.Hour<-as.factor(satisfactionSurveyF$Scheduled.Departure.Hour)
satisfactionSurveyF$Departure.Delay.in.Minutes<-as.factor(satisfactionSurveyF$Departure.Delay.in.Minutes)
satisfactionSurveyF$Arrival.Delay.in.Minutes<-as.factor(satisfactionSurveyF$Arrival.Delay.in.Minutes)
satisfactionSurveyF$Flight.cancelled<-as.factor(satisfactionSurveyF$Flight.cancelled)
satisfactionSurveyF$Flight.time.in.minutes<-as.factor(satisfactionSurveyF$Flight.time.in.minutes)
satisfactionSurveyF$Flight.Distance<-as.factor(satisfactionSurveyF$Flight.Distance)
satisfactionSurveyF$Arr.Delay.greater.5.Mins<-as.factor(satisfactionSurveyF$Arr.Delay.greater.5.Mins)
satisfactionSurveyF$No.of.other.Loyalty.Cards<-as.factor(satisfactionSurveyF$No.of.other.Loyalty.Cards)

satisfactionSurveyF<-satisfactionSurveyF[,-c(16,17)]
