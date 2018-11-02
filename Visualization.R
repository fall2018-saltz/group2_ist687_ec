
library(ggplot2)

plot1<-ggplot(data=satisfactionSurvey,aes(x=Age,y=Satisfaction))+
geom_point()
