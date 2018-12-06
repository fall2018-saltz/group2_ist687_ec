
#library(data.table)
colSatSurvey$Airline.Status <- gsub(" ", "", colSatSurvey$Airline.Status, fixed = TRUE)
colSatSurvey$Gender <- gsub(" ", "", colSatSurvey$Gender, fixed = TRUE)
colSatSurvey$Type.of.Travel <- trimws(colSatSurvey$Type.of.Travel)
colSatSurvey$Class <- trimws(colSatSurvey$Class)
colSatSurvey$Airline.Code <- trimws(colSatSurvey$Airline.Code)
colSatSurvey$Airline.Name <- trimws(colSatSurvey$Airline.Name)
colSatSurvey$Origin.City <- trimws(colSatSurvey$Origin.City)
colSatSurvey$Origin.State <- trimws(colSatSurvey$Origin.State)
colSatSurvey$Destination.City <- trimws(colSatSurvey$Destination.City)
colSatSurvey$Destination.State <- trimws(colSatSurvey$Destination.State)

trimSatSurvey <- colSatSurvey
