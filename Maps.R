
library("ggplot2")
library("mapproj")
library("dplyr")
US <- map_data("state")

SatByAirlines <- data.frame(plotMaps %>%
                              group_by(Airline.Name) %>%
                              dplyr::summarize(AverageSatisfaction = mean(Satisfaction, na.rm=TRUE)))

SatByOriStates <- data.frame(plotMaps %>%
                               group_by(Origin.State) %>%
                               dplyr::summarize(AverageSatisfaction = mean(Satisfaction, na.rm=TRUE)))

SatByOriStates <- SatByOriStates[order(SatByOriStates$AverageSatisfaction),] 
SatByOriStates$Origin.State <- tolower(SatByOriStates$Origin.State)

SatByOriStatesMap <- ggplot(SatByOriStates, aes(map_id = Origin.State))+ 
  geom_map(map = US, aes(fill = AverageSatisfaction))+ 
  expand_limits(x=US$long, y=US$lat)+
  coord_map() + ggtitle("Average Satisfaction for Origin States") + labs (x="Longitude", y="Latitude")

SatByOriStatesMap
#3
SatByDesStates <- data.frame(plotMaps %>%
                               group_by(Destination.State) %>%
                               dplyr::summarize(AverageSatisfaction = mean(Satisfaction, na.rm=TRUE)))
SatByDesStates <- SatByDesStates [order(SatByDesStates$AverageSatisfaction),] 
SatByDesStates$Destination.State<- tolower(SatByDesStates$Destination.State)

SatByDesStatesMap <- ggplot(SatByDesStates, aes(map_id = Destination.State))+ 
  geom_map(map = US, aes(fill = AverageSatisfaction))+ 
  expand_limits(x=US$long, y=US$lat)+
  coord_map() + ggtitle("Average Satisfaction for Destination States") + labs (x="Longitude", y="Latitude")+
scale_fill_gradient(high = "darkred",low = "white")
SatByDesStatesMap
