
library("mapproj")
library("mapdata")
us<-map_data("state")
us

map1<-ggplot(satisfactionSurveyP, aes(map_id=originstate))
map1<-map1+geom_map(map=us, aes(fill=Satisfaction))
map1<-map1+expand_limits(x=us$long, y=us$lat)
map1<-map1+coord_map()+ggtitle("USA states Satisfaction")
map1

satisfactionSurveyP$Destination.State <- tolower(satisfactionSurveyP$Destination.State)
map2<-ggplot(satisfactionSurveyP, aes(map_id=Destination.State))
map2<-map2+geom_map(map=us, aes(fill=Satisfaction))
map2<-map2+expand_limits(x=us$long, y=us$lat)
map2<-map2+coord_map()+ggtitle("USA states Satisfaction")

#Tavleen's
name.box<-ggplot(satisfactionSurveyP,aes(x=satisfactionSurveyP$Airline.Name,y=satisfactionSurveyP$Satisfaction))
name.box<-name.box+geom_boxplot()
name.box<-name.box+theme(axis.text.x=element_text(angle=90,hjust=1))
name.box
