
library(arules)
ruleset<-apriori(satisfactionSurveyF,parameter = list(support=0.28,confidence=0.55),appearance = list(default="lhs",rhs="Satisfaction High"))w

#inspect(ruleset)
