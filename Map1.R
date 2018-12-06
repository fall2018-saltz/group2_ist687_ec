
library("ggplot2")
library("mapproj")

#library("mapdata")

us<-map_data("state")

map1<-ggplot(satisfactionSurveyM1, aes(map_id=Origin.State))
map1<-map1+geom_map(map=us, aes(fill=Satisfaction))
map1<-map1+expand_limits(x=us$long, y=us$lat)
map1<-map1+coord_map()+ggtitle("USA states Satisfaction")
