
library("ggplot2")
#Group dataset by state
state.group<-group_by(satisfactionSurveyy,Origin.State)
stateavg<-summarize(state.group,count=n(),avg.depdelay=mean(Departure.Delay.in.Minutes, na.rm = TRUE),
                    avg.arrdelay=mean(Arrival.Delay.in.Minutes,na.rm=TRUE))
#stateavg

#Make bar graph comparing departure delays
origstatebar<-ggplot(stateavg,aes(x=stateavg$Origin.State,y=stateavg$avg.depdelay),na.rm=TRUE)
origstatebar<-origstatebar+geom_bar(stat="identity")+theme(axis.text.x=element_text(angle=90,hjust=1))
origstatebar<-origstatebar+xlab("Origin State")+ylab("Average Departure Delay")+ggtitle("Origin States and Average Departure Delays")
origstatebar
