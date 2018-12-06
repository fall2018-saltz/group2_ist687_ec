
library(data.table)
setnames(satisfactionSurvey, old=c('X..of.Flight.with.other.Airlines'), new = c('Percentage of Flight with other Airlines'))
setnames(satisfactionSurvey, old=c('Percentage of Flight with other Airlines'), new = c('Percentage.of.Flight.with.other.Airlines'))
setnames(satisfactionSurvey, old=c('Orgin.City','No..of.other.Loyalty.Cards'), new = c('Origin.City','No.of.other.Loyalty.Cards'))
setnames(satisfactionSurvey, old=c('Arrival.Delay.greater.5.Mins'), new = c('Arr.Delay.greater.5.Mins'))
satisfactionSurvey
