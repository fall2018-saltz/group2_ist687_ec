
library(ggplot2)

plot1<-ggplot(data=SatisfactionSurvey,aes(x=Age,y=Satisfaction))+
geom_point()
