library(e1071)
library(caret)
data("Orange")
set.seed(123)
head(Orange)
indexes=createDataPartition(Orange$circumference,p=.8,list=F)
train=Orange[indexes,]
test=Orange[-indexes,]
train
test
model_svm=svm(circumference~.,data=train)
print(model_svm)

#predicting with test model
predict(model_svm,test)
cm=confusionMatrix(predict(model_svm,test),as.factor(test$circumference))
print(cm)

#2nd model
model=train(circumference~.,data=train,method="svmRadial")
print(model)

pred<-format(round(predict(model,test)))
cm=confusionMatrix(pred,as.factor(test$circumference))
print(cm)



#play tennis question
my_df=data.frame(Outlook=c("sunny","sunny","overcast","rain","rain","rain","overcast","sunny","sunny","rain","sunny","overcast","overcast","rain"),Temperature=c("hot","hot","hot","mild","cool","cool","cool","mild","cool","mild","mild","mild","hot","mild"),Humidity=c("high","high","high","high","normal","normal","normal","high","normal","normal","normal","high","normal","high"),Windy=c("false","true","false","false","false","true","true","false","false","false","true","true","false","true"),Class=c("N","N","P","P","P","N","P","N","P","P","P","P","P","N"))
my_df
set.seed(123)
trainIndex<-sample(1:nrow(my_df),0.8*nrow(my_df))
train<-my_df[trainIndex,]
test<-my_df[-trainIndex,]

model<-svm(Class~.,data=train)

predict(model,test)

table(test$Class,predict(model,test))
ggplot(test,aes(x=Outlook,y=Temperature))+geom_point()+geom_point(aes(x=Outlook,y=Temperature,color=predict(model,test)),size=2,shape=21,fill="white")

test$Class
predict(model,test)
confusionMatrix(predict(model,test),as.factor(test$Class))