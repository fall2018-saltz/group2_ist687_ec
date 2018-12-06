
#satisfactionSurveyF$originstate<-tolower(satisfactionSurvey$Origin.State)
#satisfactionSurveyF$origincity<-tolower(satisfactionSurvey$Origin.City)

us<-map_data("state")

map1<-ggplot(satisfactionSurveyF, aes(map_id=originstate))
map1<-map1+geom_map(map=us, aes(fill=Satisfaction))
map1<-map1+expand_limits(x=us$long, y=us$lat)
map1<-map1+coord_map()+ggtitle("USA states Satisfaction")
