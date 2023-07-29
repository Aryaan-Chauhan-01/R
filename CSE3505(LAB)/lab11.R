#Use the newsurvey data obtained by cleaning ‘na’ values in survey data of MASS package to do the following:
library(MASS)
df=na.omit(survey)
df
  #1.     Install the dplyr package and import it.
install.packages("tidyverse")
install.packages("dplyr")
library(dplyr)

#2.     Filter all male left handers.
filter(df,Sex=="Male" & W.Hnd=="Left")

#3.     Display all female right handers who keep right on top while clapping.
filter(df,Sex=="Female" & Clap=="Right")
#4.     Display all students who never exercise.
filter(df,Exer=="None")
#5.     Display only the gender, age and writing hand of the students.
select(df,Sex,Age,W.Hnd)

#6.     Display the age, pulse rate and writing hand span of female left handers.
select(filter(df,Sex=="Female" & W.Hnd=="Left"),Age,Pulse,Wr.Hnd)

#Note: use dplyr::select while using select operator as dplyr package conflicts with MASS package

#More functions in dplyr package

#Use the newsurvey data obtained by cleaning ‘na’ values in survey data of MASS package to do the following:
  
 # 1.     Install the dplyr package and import it.

#2.     Arrange all male left handers according to descending order of their heights.

arrange(filter(df,Sex=="Male"),Height)

#3.     Introduce a new column hand_span which contains the value as difference between the span of writing hand and non-writing hand and display it along with gender, writing hand and non-writing hand span.
mutate(df,hand_span=Wr.Hnd-NW.Hnd)

#4.     Display the average writing span of male and female left handers.
summarize(filter(df,W.Hnd=="Left"),mean(Wr.Hnd))
#5.     Find the maximum pulse rate of male left and right handers.
summarize(filter(df,Sex=="Male"),max(Pulse))

#DA3
library(ggplot2)
#1
df1=subset(df,W.Hnd=="Left")
df1
library(ggplot2)
install.packages("gridExtra")
library(gridExtra)
p1=ggplot(df,aes(x=,y=Wr.Hnd,fill=Sex,size=Height))+geom_point()+ggtitle("Write hand span")
p2=ggplot(df1,aes(x=,y=Pulse,fill=Sex,size=Height))+geom_point()+ggtitle("Pulse rate of left handers")
grid.arrange(p1,p2,nrow=1)
ggplot(data=df1, aes(x=Wr.Hnd , y=Pulse, size=Height, col= Sex )) +geom_point()+ggtitle("Write hand span vs pulse rate of left handers")

ggplot(df,aes(x=Height,fill=Sex))+geom_histogram()+facet_wrap(~W.Hnd)+ggtitle("Dist ribution of height of the students")
ggplot(df,aes(x=Wr.Hnd,y=NW.Hnd,col=W.Hnd,group=W.Hnd))+geom_line()+facet_wrap(~Clap,scale="free")+ggtitle("Trend of Writing hand span Vs.Non- Writing hand span of left and right handers based on clap hand")+labs(x="Writing hand span",y="Non-writing hand span")
ggplot(df,aes(x=Age,fill=Exer,group=Exer))+geom_histogram()+facet_wrap(~Sex)+ggtitle("Age distribution of male and female students based on exercise")
ggplot(df,aes(x=Smoke,y=Wr.Hnd))+geom_boxplot()+ggtitle("Box plot of writing hand span based on smoking habits of students")+labs(x="Smoking habits",y="Wriing hand span")