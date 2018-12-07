
#summary(satisfactionSurvey1)
#str(satisfactionSurvey1)
library(data.table)
#setnames(satisfactionSurvey1, old=c('X..of.Flight.with.other.Airlines'), new = c('Percentage of Flight with other Airlines'))
#setnames(satisfactionSurvey1, old=c('Percentage of Flight with other Airlines'), new = c('Percentage.of.Flight.with.other.Airlines'))
#setnames(satisfactionSurvey1, old=c('Orgin.City','No..of.other.Loyalty.Cards'), new = c('Origin.City','No.of.other.Loyalty.Cards'))
#setnames(satisfactionSurvey1, old=c('No.of.Flights.per.customer'), new = c('No.of.Flights.per.annum'))
#colSatSurvey <- setnames(satisfactionSurvey1, old=c('Arrival.Delay.greater.5.Mins'), new = c('Arr.Delay.greater.5.Mins'))



setnames(satisfactionSurvey1, old=c('X..of.Flight.with.other.Airlines'), new = c('Percentage of Flight with other Airlines'))
setnames(satisfactionSurvey1, old=c('Percentage of Flight with other Airlines'), new = c('Percentage.of.Flight.with.other.Airlines'))
setnames(satisfactionSurvey1, old=c('Orgin.City','No..of.other.Loyalty.Cards'), new = c('Origin.City','No.of.other.Loyalty.Cards'))
colSatSurvey <- setnames(satisfactionSurvey1, old=c('Arrival.Delay.greater.5.Mins'), new = c('Arr.Delay.greater.5.Mins'))

colSatSurvey980 <-colSatSurvey
