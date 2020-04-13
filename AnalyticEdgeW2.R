#Unit 2
# https://courses.edx.org/courses/course-v1:MITx+15.071x+1T2020/courseware/f8d71d64418146f18a066d7f0379678c/35b789067e9b469caed457cfff1645b7/?activate_block_id=block-v1%3AMITx%2B15.071x%2B1T2020%2Btype%40sequential%2Bblock%4035b789067e9b469caed457cfff1645b7

wine = read.csv("wine.csv")
str(wine)
summary(wine)
#model linear regresion
model1 = lm(Price ~ AGST, data = wine)
#content of model
summary(model1)
#call, residuals, coeficients
model1$residuals
# sum of square erros
SSE = sum(model1$residuals^2)
SSE
#model with more variables
model2 = lm(Price ~ AGST + HarvestRain, data=wine)
summary(model2)
SSE = sum(model2$residuals^2)
SSE
#model with all the indepentent variables
model3 = lm(Price ~ AGST + HarvestRain + WinterRain + Age + FrancePop, data=wine)
summary(model3)