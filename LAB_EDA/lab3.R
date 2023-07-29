#linear regression

marketing=data.frame(sales=c(2,4,6,9,12,34,45),youtube=c(1,2,4,7,9,11,15))
cor(marketing$sales,marketing$youtube)

cov(marketing$sales,marketing$youtube)

hist(marketing$sales, col='steelblue', main='Normal')

hist(marketing$youtube,col='steelblue',main='Normal')

#checking normal distribution graph
#shapiro walker test value if grater then 0.05 then normal didtributed

#for youtube
shapiro.test(marketing$youtube)

#for sales
shapiro.test(marketing$sales)

#linear regresssion model
model<-lm(sales~youtube,data=marketing) #sales is teh dependent variable and youtube is the independent variable
model

plot(marketing$sales~marketing$youtube,data=marketing)

abline(model) #the regression line
resids=model$residuals #the difference between actual point and the corresponding value on the regression line
resids
coef(model) #gives the intercept and the slope of the line

model$coef[1] #intercept
model$coef[2] #slope
model$coef[0] #nothing

summary(model)

#predicting sales using the linear regression model

newdata<-data.frame(youtube=c(0,1000)) #entering the new data set
predict(model,newdata) #predicting corresponding to the new value

#x is height and y is weight
x<-c(151,174,138,186,128,136,179,163,152,131)
y<-c(63,81,56,91,47,57,76,72,62,48)
relation<-lm(y~x) #assigning y is dependent variable while x is independent
print(relation)

summary(relation)

a<-data.frame(x=170)#new data of height
result<-predict(relation,a)#storing predicted value using model with name relation
print(result)

png(file="20BCE1214heightvsweight.png")#giving chart file a name
plot(y,x,col="blue",main="Height & weight regression",abline(lm(x~y)),cex=1.3,pch=16,xlab="weight in kg",ylab="Height in cm")#plot


#printing using the previous method
plot(y~x,xlab="height",ylab="weight")
abline(relation)

#using general import and then plotting 
plot(lab3ex1)

#using library and read_excel command line
library(readxl)
ex1<-read_excel("lab3ex1.xlsx")
r<-lm(ex1$Spend~ex1$Sales)
plot(ex1$Spend~ex1$Sales)
abline(r)