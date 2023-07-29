install.packages("MASS")
library(MASS)
survey
ndata<-na.omit(survey)
ndata
range(ndata$Age)#range of students in the survey participating in the survey
#method 2
m1=min(ndata$Age)
m2=max(ndata$Age)
r1=m2-m1
r1
#Break the age range into non-overlapping sub-intervals by defining a sequence of equal distance break points of 10 by rounding the range to nearest integer
ranges = as.data.frame(table(cut(ndata$Age,seq(m1,m2,10))))
ranges$Var1
#Find the distribution of the age range according to the sub-intervals with cut with its right boundary opened. Display it in column form.
as.data.frame(table(cut(ndata$Age,seq(m1,m2,10))))
#Which age range of students has mostly participated in the survey.
ranges$Var1[which.max(ranges$Freq)]
#Similarly, find the frequency distribution of Wr.Hnd span and display it in column format.
m3=min(ndata$Wr.Hnd)
m4=max(ndata$Wr.Hnd)
as.data.frame(table(cut(ndata$Wr.Hnd,seq(m3,m4,3))))
#Find the relative frequency of Wr.Hnd and display it by correcting to 3 decimal places.
round(table(ndata$Wr.Hnd)/length(ndata$Wr.Hnd), 3)

# Part B
#Find the average age of the students participated in the survey
mean(ndata$Age)
#Compute the standard deviation and variance of the height of the students participated in the survey
sd(ndata$Height)
var(ndata$Height)
#Compute the quartile of wirte hand span
quantile(ndata$Wr.Hnd)
#Find the correlation between write hand span and pulse rate of the students
cor(ndata$Wr.Hnd,ndata$Pulse)
#Find the average age of the students based on how often the student exercises.
s1 <- subset(ndata,Exer=="Freq",c(Age))
s1
mean(s1$Age)
#Find the standard deviation of height of the students under different categories of span of non-writing hand.
s2 <- subset(ndata,NW.Hnd>=17 && NW.Hnd<20,c(Height))
s3<- subset(ndata,NW.Hnd>=20,c(Height))
sd(s2$Height)
sd(s3$Height)
#Obtain the summary statistics of pulse rate of the students
summary(ndata$Pulse)