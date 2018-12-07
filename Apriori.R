
library("Matrix")
library("arules")
ruleset<-apriori(satisfactionSurveyF1,parameter = list(support=0.28,confidence=0.55),appearance = list(default="lhs",rhs="Satisfaction High"))

#inspect(ruleset)
