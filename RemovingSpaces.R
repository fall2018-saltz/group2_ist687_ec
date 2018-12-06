
library(data.table)
gsub(" ", "", satisfactionSurvey$Airline.Status, fixed = TRUE)
gsub(" ", "", satisfactionSurvey$Gender, fixed = TRUE)
trimws(satisfactionSurvey$Type.of.Travel)
trimws(satisfactionSurvey$Class)
trimws(satisfactionSurvey$Airline.Code)
trimws(satisfactionSurvey$Airline.Name)
trimws(satisfactionSurvey$Origin.City)
trimws(satisfactionSurvey$Origin.State)
trimws(satisfactionSurvey$Destination.City)
trimws(satisfactionSurvey$Destination.State)
satisfactionSurvey

