runif(100,min=0,max=1) # generating 100 random numbers from 0 to 1

#create data frame
data<-data.frame(program=rep(c("A","B","C"),each=30),weight_loss=c(runif(30,0,3),runif(30,0,5),runif(30,1,7)))
data

#display only program A
#data[data[,1]=='A']
mymodel<-aov(weight_loss~program,data=data)
hist(data$weight_loss)
#Q-Q plot
qqnorm(mymodel$residuals)
qqline(mymodel$residuals)
shapiro.test(data$weight_loss) #if p<0.05 null hypothesis rejected 

#check equal variance by boxplot
boxplot(weight_loss~program, xlab='Programs',ylab='Weight Loss',data=data)

#bartlett's test for variance
bartlett.test(weight_loss~program,data=data)

summary.aov(mymodel)


#another data
mydata<-data.frame(Hospital=rep(c("AIIMS","Apollo","Escort")),numberofdays=c(c(8,4,1),c(5,3,4),c(9,8,9),c(2,7,8),c(7,7,7),c(8,1,2),c(2,5,3)))
#mydata$Hospital<-as.numeric(gsub("\\.","",mydata$Hospital))
#FIT<-aov(mydata$Hospital~mydata$numberofdays)

mydata
hist(mydata$numberofdays)
mymodel1<-aov(Hospital~numberofdays,data=mydata)
