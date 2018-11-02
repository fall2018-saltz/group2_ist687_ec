
library(ggplot2)

plot1<-ggplot(data=ss2,aes(x=Age,y=Satisfaction))+geom_point()
plot2<-ggplot(data=ss2,aes(x=Airline.Status,y=Satisfaction))+geom_point()
plot3<-ggplot(data=ss2,aes(x=Price.Sensitivity,y=Satisfaction))+geom_point()
plot4<-ggplot(data=ss2,aes(x=Year.of.First.Flight,y=Satisfaction))+geom_point()
plot5<-ggplot(data=ss2,aes(x=Percentage.of.Flight.with.other.Airlines,y=Satisfaction))+geom_point()
plot6<-ggplot(data=ss2,aes(x=No.of.Flights.per.annum,y=Satisfaction))+geom_point()
plot7<-ggplot(data=ss2,aes(x=Airline.Name,y=Satisfaction))+geom_point()
plot8<-ggplot(data=ss2,aes(x=Origin.City,y=Satisfaction))+geom_point()
plot9<-ggplot(data=ss2,aes(x=Arrival.Delay.in.Minutes,y=Satisfaction))+geom_point()
plot10<-ggplot(data=ss2,aes(x=Flight.cancelled,y=Satisfaction))+geom_point()
