#import package MASS
install.packages("MASS")
library(MASS)
survey
str(survey)
print(colnames(survey))
#list of rows with missing values
demo<-survey
missingrow<-subset(demo,is.na(demo$Sex)|is.na(demo$Wr.Hnd)|is.na(demo$NW.Hnd)|is.na(demo$W.Hnd)|is.na(demo$Fold)|is.na(demo$Pulse)|is.na(demo$Clap)|is.na(demo$Exer)|is.na(demo$Smoke)|is.na(demo$Height)|is.na(demo$M.I)|is.na(demo$Age))
missingrow
#data frame containing the survey data after removing NA values
d=data.frame(survey)
d1=na.omit(d)
d1
#getting the count of different categories of sex in data
install.packages("plyr")
library("plyr")
count(d,'Sex')#1 method
s<-d$Sex
table(s)#another method

#getting the count of left and right handed people
table(d$W.Hnd)#1 method
count(d,'W.Hnd')#2nd method

#getting relative frequency distribution of left & right handedness
rf<-table(d$W.Hnd)/length(d$W.Hnd)
print(format(round(rf,2),nsmall = 2))

#display male left handed and female left handed
sub1<-subset(d,d$W.Hnd=="Left")
sub1

#percentage of male left handed who never smoked
sub2<-subset(d,d$Sex=="Male" & d$W.Hnd=="Left")
sub3<-subset(sub2,sub2$Smoke=="Never")
c1<-nrow(sub2)
c2<-nrow(sub3)
r<-(c2/c1)*100
print(format(round(r,2),nsmall=2))