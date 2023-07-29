#1 Plot a bar graph for the number of male and female participants in the survey. Provide the title as “Male and Female participants”, y-axis label as “frequency” and specify the colours for the bars.
library(MASS)
df=na.omit(survey)
df
barplot(table(df$Sex),main="Male and Female participants",ylab="frequency",col=c("pink","blue"))
legend("topright",c("Female","Male"),fill=c("pink","blue"))
#2 Plot a bar graph for the number of left handers and right handers in the survey. Provide the title as “Left Handers and Right Handers”, y-axis label as “count” and specify the colours for the bars.
barplot(table(df$W.Hnd),main="Left handers and Write Handers",ylab="count",col=c("red","green"))
legend("topleft",c("left","right"),fill=c("red","green"))
#3 Plot the distribution between male left handers and female left handers using bar chart. Provide the title as “Female Left Handers and Male Left Handers , y-axis label as “count” and specify the colours for the bars.
df3=subset(df,W.Hnd=="Left")
df3
barplot(table(df3$Sex),main="Female Left Handers and Male Left Handers",ylab="count",col=c("pink","blue"))
legend("topright",c("female","male"),fill=c("pink","blue"))
#4 Draw the distribution of smoking habits of male left handers using pie chart.
df4=subset(df,W.Hnd=="Left"& Sex=="Male")
df4
labels=c("Heavy","Regul","Occas","Never")
pie(table(df4$Smoke),labels,main="Smoking habits of left handed men",col=c("Red","Orange","Yellow","Green"))
#5 Draw the histogram of age distribution with the title as ‘Age distribution’ and xlabel as ‘Age range’ and ylabel as ‘frequency’.
hist(df$Age,main="Age distribution",xlab="Age range",ylab="frequency")
#6 Reveal the relationship between the age and writing hand span using scatter plot.
plot(df$Age,df$Wr.Hnd)
#7  Draw the boxplot for pulse rate to analyse the five summary statistics. Provide appropriate title and label.
boxplot(df$Pulse,main="The pulse anlysis for the survey",ylab="Pulse")

#part b

#1 import ggplot2 package
library(ggplot2)
#2  Plot a bar graph for the number of male and female participants in the survey. Provide the title as “Male and Female participants” and specify the colours for the bars.
ggplot(df,aes(x=Sex,fill=Sex))+geom_bar()+ggtitle("Male and Female participants")
#3 Plot a bar graph for the number of left handers and right handers in the survey. Provide the title as “Left Handers and Right Handers” and specify the colours for the bars.
ggplot(df,aes(x=W.Hnd,fill=W.Hnd))+geom_bar()+ggtitle("Left Handers and Right Handers")
#4 Plot the distribution between male left handers and female left handers using bar chart. Provide the title as “Female Left Handers and Male Left Handers” and specify the colours for the bars.
ggplot(df3,aes(x=Sex,fill=Sex))+geom_bar()+ggtitle("Female Left Handers and Male Left Handers")
#5 Draw the distribution of smoking habits of male left handers based on age using pie chart.
ggplot(df4,aes(x="",y=Smoke,fill=Smoke))+ggtitle("Smoking habits of left handed")+geom_bar(stat="Identity",width=1,color="white")+coord_polar("y",start=0)+theme_void()
#6 Draw the histogram of age distribution with the title as ‘Age distribution’ and xlabel as ‘Age range’ and ylabel as ‘frequency’.
ggplot(df,aes(x=Age))+geom_histogram()+labs(title="Age distribution",x="Age range",y="frequency")
#7 Reveal the relationship between the age and writing hand span using scatter plot.
ggplot(df,aes(x=Age,y=Wr.Hnd))+geom_point()+geom_smooth(method='lm')