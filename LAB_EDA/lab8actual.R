library(e1071)
library(factoextra)
library(ggplot2)
library(caret)

data(iris)

set.seed(123)#split data into testing and training data 
trainIndex<-sample(1:nrow(iris),0.8*nrow(iris))
train<-iris[trainIndex,]
test<-iris[-trainIndex,]

#the model
model<-naiveBayes(Species~.,data=train)

#predict
predict(model,test)

#checking the accuracy
table(test$Species,predict(model,test))

#plotting
ggplot(test,aes(x=Sepal.Length,y=Sepal.Width,color=Species))+geom_point()+geom_point(aes(x=Sepal.Length,y=Sepal.Width,color=predict(model,test)),size=3,shape=21,fill="white")

confusionMatrix(predict(model,test),test$Species)


#play tennis question
my_df=data.frame(Outlook=c("sunny","sunny","overcast","rain","rain","rain","overcast","sunny","sunny","rain","sunny","overcast","overcast","rain"),Temperature=c("hot","hot","hot","mild","cool","cool","cool","mild","cool","mild","mild","mild","hot","mild"),Humidity=c("high","high","high","high","normal","normal","normal","high","normal","normal","normal","high","normal","high"),Windy=c("false","true","false","false","false","true","true","false","false","false","true","true","false","true"),Class=c("N","N","P","P","P","N","P","N","P","P","P","P","P","N"))
my_df
set.seed(123)
trainIndex<-sample(1:nrow(my_df),0.8*nrow(my_df))
train<-my_df[trainIndex,]
test<-my_df[-trainIndex,]

model<-naiveBayes(Class~.,data=train)

predict(model,test)

table(test$Class,predict(model,test))
ggplot(test,aes(x=Outlook,y=Temperature))+geom_point()+geom_point(aes(x=Outlook,y=Temperature,color=predict(model,test)),size=2,shape=21,fill="white")

test$Class
predict(model,test)
confusionMatrix(predict(model,test),as.factor(test$Class))