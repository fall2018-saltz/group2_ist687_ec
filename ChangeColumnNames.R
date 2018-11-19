
summary(satisfactionSurvey)
str(satisfactionSurvey)
library(data.table)
setnames(satisfactionSurvey, old=c('X..of.Flight.with.other.Airlines'), new = c('Percentage of Flight with other Airlines'))
setnames(satisfactionSurvey, old=c('No.of.Flights.p.a.', 'Percentage of Flight with other Airlines'), new = c('No.of.Flights.per.customer','Percentage.of.Flight.with.other.Airlines'))
setnames(satisfactionSurvey, old=c('Orgin.City','No..of.other.Loyalty.Cards'), new = c('Origin.City','No.of.other.Loyalty.Cards'))
setnames(satisfactionSurvey, old=c('No.of.Flights.per.customer'), new = c('No.of.Flights.per.annum'))
setnames(satisfactionSurvey, old=c('Arrival.Delay.greater.5.Mins'), new = c('Arr.Delay.greater.5.Mins'))
