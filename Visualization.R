
library(ggplot2)

plot1<-ggplot(ss2,aes(x=Age,y=Satisfcation))+geom_point()
plot2<-ggplot(ss2,aes(x=Price.Sensitivity,y=Satisfcation))+geom_point()
plot3<-ggplot(ss2,aes(x=No.of.Flights.per.annum,y=Satisfcation))+geom_point()
plot4<-ggplot(ss2,aes(x=Airplane.Code,y=Satisfcation))+geom_point()
plot5<-ggplot(ss2,aes(x=Scheduled.Departure.Hour,y=Satisfcation))+geom_point()
plot6<-ggplot(ss2,aes(x=Departure.Delay.in.Minutes,y=Satisfcation))+geom_point()
plot7<-ggplot(ss2,aes(x=Arrival.Delay.in.Minutes,y=Satisfcation))+geom_point()
plot8<-ggplot(ss2,aes(x=Flight.Cancelled,y=Satisfcation))+geom_point()
plot9<-ggplot(ss2,aes(x=Arr.Delay.greater.5.Mins,y=Satisfcation))+geom_point()
