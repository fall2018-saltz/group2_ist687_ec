
ss<-which((is.na(colSatSurvey$Flight.time.in.minutes)&colSatSurvey$Flight.cancelled=="No"))
colSatSurvey<-colSatSurvey[-ss,]
colSatSurvey5 <- colSatSurvey
