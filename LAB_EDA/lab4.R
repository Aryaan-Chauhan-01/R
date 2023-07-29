 x=c(22,24,25,25,28,29,34,37,40,44,51,48,47,50,51)

#autocorrelation
acf(x,pl=FALSE)
acf(x,pl=2)
acf(x,pl=0)
acf(x,lag=1,pl=FALSE)

#model
data()

#predefined data
input<-mtcars[,c("mpg","disp","hp","wt")]
input

#model development of multiple linear regression(more than 1 independent variables)
model<-lm(mpg~disp+hp+wt,data=input)
model
print(model)
a<-coef(model)[1]#intercecpt
print(a)
Xdisp<-coef(model)[2]#slope of disp
print(Xdisp)
Xhp<-coef(model)[3]#slope of hp
print(Xhp)
Xwt<-coef(model)[4]#slope of wt
print(Xwt)

#therefore the equation becomes y=a+Xdisp(x1)+Xhp(x2)+Xwt(x3)

new<-data.frame(disp=c(50),hp=c(60),wt=c(45))#taking input of values for checking the model for a value in disp,hp and wt
predict(model,newdata=new)#predicting the value of mpg
#creting QQ plots for the above data frame
res<-resid(model)#residual
qqnorm(res)
qqline(res)


#new data frame
df<-data.frame(ratings=c(67,75,79,85,90,96,97),
               points=c(8,12,16,15,22,28,24),
               assists=c(4,6,6,5,3,8,7),
               rebounds=c(1,4,3,3,2,6,7))
df
model<-lm(ratings~points+assists+rebounds,data=df) #model creation
summary(model)#summary of model

new<-data.frame(points=c(20),assists=c(5),rebounds=c(2))#new data to check
predict(model,newdata=new) #preddicting to corresponding values

#creting QQ plots for the above data frame
res<-resid(model)#residual
qqnorm(res)
qqline(res)


#model creation for a little larger dataset
cars
scatter.smooth(x=cars$speed,y=cars$dist,main="Dist~Speed") #to find relationship b/w distance and speed in visual form
cor(cars$speed,cars$dist)#correlation
linearMod<-lm(dist~speed,data=cars)#creating linear model
print(linearMod)
AIC(linearMod)
BIC(linearMod)

#predicting values using linear model
data=c(23,45,21,34,5,6,7,8,86,45,3)
print(sample(data,4))#some random 4 numbers
print(sample(data,1))#another random  number
print(sample(data,6))#another random 6 numbers

 #create dataframe with 2 columns
data=data.frame(col1=c(1:10),col2=c(12:21))

#getting sample of 4 in each column
data[sample(1:nrow(data),size=4),]
set.seed(100) #setting seed to reproduce results of random sampling
trainingRowIndex<-sample(1:nrow(cars),0.8*nrow(cars))#row indices for training dataset
trainingData<-cars[trainingRowIndex]#traing dataset
testData<-cars[~trainingRowIndex]#test data
lmModel<-lm(dist~speed,data=trainingData)#building model
distPred<-predict(lmModel,testData)#veryfying by predicting value
summary(lmModel)

#cbind
df1<-data.frame(name=c('A','B','C','D','E','F'),age=c(22,25,28,19,15,23))
print(df1)
df2<-data.frame(gender=c('Male','Male','Female','Male','Female','Female'))
print(df2)
final_data<-cbind(df1,df2)
final_data

actual_preds<-data.frame(cbind(actuals=testdata$dist,predicteds=distPred))