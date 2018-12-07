
# Create df according to different age group and calculate the average satisfaction
# Under 18 years
Under18Satisfaction <- as.data.frame(filter(satisfactionSurveyAge, Age<18))
#str(Under18Satisfaction)
#nrow(Under18Satisfaction)
Under18AveSatisfaction <- mean(Under18Satisfaction$Satisfaction)
Under18AveSatisfaction

#18 to 24 years
Under24Satisfaction <- as.data.frame(filter(satisfactionSurveyAge, Age>=18 & Age<=24))
#str(Under24Satisfaction)
#nrow(Under24Satisfaction)
Under24AveSatisfaction <- mean(Under24Satisfaction$Satisfaction)
Under24AveSatisfaction

#25 to 34 years
Under34Satisfaction <- as.data.frame(filter(satisfactionSurveyAge, Age>=25 & Age<=34))
#str(Under34Satisfaction)
#nrow(Under34Satisfaction)
Under34AveSatisfaction <- mean(Under34Satisfaction$Satisfaction)
Under34AveSatisfaction

#35 to 44 years
Under44Satisfaction <- as.data.frame(filter(satisfactionSurveyAge, Age>=35 & Age<=44))
#str(Under44Satisfaction)
#nrow(Under44Satisfaction)
Under44AveSatisfaction <- mean(Under44Satisfaction$Satisfaction)
Under44AveSatisfaction

#45 to 54 years
Under54Satisfaction <- as.data.frame(filter(satisfactionSurveyAge, Age>=45 & Age<=54))
#str(Under54Satisfaction)
#nrow(Under54Satisfaction)
Under54AveSatisfaction <- mean(Under54Satisfaction$Satisfaction)
Under54AveSatisfaction

#55 to 64 years
Under64Satisfaction <- as.data.frame(filter(satisfactionSurveyAge, Age>=55 & Age<=64))
#str(Under64Satisfaction)
#nrow(Under64Satisfaction)
Under64AveSatisfaction <- mean(Under64Satisfaction$Satisfaction)
Under64AveSatisfaction

#Age 65 or older
Above65Satisfaction <- as.data.frame(filter(satisfactionSurveyAge, Age>=65))
#str(Above65Satisfaction)
#nrow(Above65Satisfaction)
Above65AveSatisfaction <- mean(Above65Satisfaction$Satisfaction)
Above65AveSatisfaction

# Data frame of satifaction of different age group
SatiByAge <- data.frame("AgeGroup"=c("18-", "18-24", "25-34", "35-44", "45-54", "55-64", "65+"), 
                        "NumberOfPeople"=c(nrow(Under18Satisfaction), nrow(Under24Satisfaction), nrow(Under34Satisfaction),nrow(Under44Satisfaction),
                                           nrow(Under54Satisfaction),nrow(Under64Satisfaction),nrow(Above65Satisfaction)),
                        "AverageSatisfaction"=c(mean(Under18Satisfaction$Satisfaction),mean(Under24Satisfaction$Satisfaction),mean(Under34Satisfaction$Satisfaction),mean(Under44Satisfaction$Satisfaction),mean(Under54Satisfaction$Satisfaction),mean(Under64Satisfaction$Satisfaction),mean(Above65Satisfaction$Satisfaction)))

# Sample age distribution
AgeDist <- ggplot(SatiByAge, aes(x=AgeGroup,y=NumberOfPeople))+
  geom_col(width = 0.3)+
  labs(title="Number of people of different age groups",x="Age Group", y="Number Of People")
AgeDist


# Average satifaction of different age group
AgeSatiCol <- ggplot(SatiByAge, aes(x=AgeGroup,y=AverageSatisfaction))+
  geom_col(width = 0.3)+
  labs(title="Average satisfaction of different age groups",x="Age Group", y="Average Satisfaction")
AgeSatiCol

