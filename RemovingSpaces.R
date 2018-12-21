
#library(data.table)
str(colSatSurvey55)
colSatSurvey55$Airline.Status <- gsub(" ", "", colSatSurvey55$Airline.Status, fixed = TRUE)
colSatSurvey55$Gender <- gsub(" ", "", colSatSurvey55$Gender, fixed = TRUE)
colSatSurvey55$Type.of.Travel <- trimws(colSatSurvey55$Type.of.Travel)
colSatSurvey55$Class <- trimws(colSatSurvey55$Class)
colSatSurvey55$Airline.Code <- trimws(colSatSurvey55$Airline.Code)
colSatSurvey55$Airline.Name <- trimws(colSatSurvey55$Airline.Name)
colSatSurvey55$Origin.City <- trimws(colSatSurvey55$Origin.City)
colSatSurvey55$Origin.State <- trimws(colSatSurvey55$Origin.State)
colSatSurvey55$Destination.City <- trimws(colSatSurvey55$Destination.City)
colSatSurvey55$Destination.State <- trimws(colSatSurvey55$Destination.State)

trimSatSurvey <- colSatSurvey55
