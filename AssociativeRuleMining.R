
library('Matrix')
#library('arules')

library(arules)
ruleset<-apriori(satisfactionSurveyF1,parameter = list(support=0.28,confidence=0.55),appearance = list(default="lhs",rhs="Satisfaction=High"))

ruleset2<-apriori(satisfactionSurveyF1,parameter = list(support=0.22,confidence=0.60),appearance = list(default="lhs",rhs="Satisfaction=Low"))

#inspect(ruleset)
#inspect(ruleset2)


