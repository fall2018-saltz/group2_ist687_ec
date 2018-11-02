
library(ggplot2)

plot1<-ggplot(ss2,aes(x=Age,y=Satisfaction))+geom_point()
plot2<-ggplot(ss2,aes(x=Price.Sensitivity,y=Satisfaction))+geom_point()
plot3<-ggplot(ss2,aes(x=No.of.Flights.per.annum,y=Satisfaction))+geom_point()
plot4<-ggplot(ss2,aes(x=Airline.Code,y=Satisfaction))+geom_point()
plot5<-ggplot(ss2,aes(x=Scheduled.Departure.Hour,y=Satisfaction))+geom_point()
plot6<-ggplot(ss2,aes(x=Departure.Delay.in.Minutes,y=Satisfaction))+geom_point()
plot7<-ggplot(ss2,aes(x=Arrival.Delay.in.Minutes,y=Satisfaction))+geom_point()
plot8<-ggplot(ss2,aes(x=Flight.Cancelled,y=Satisfaction))+geom_point()
plot9<-ggplot(ss2,aes(x=Arr.Delay.greater.5.Mins,y=Satisfaction))+geom_point()
