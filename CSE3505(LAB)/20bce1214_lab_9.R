mdf<-read.csv('Inputdata.csv')
mdf
cor(mdf$T,mdf$RH,method="pearson")
cor(mdf$T,mdf$RH,method="spearman")
cor(mdf$T,mdf$RH,method="kendall")

plot(mdf$T,mdf$RH)

boxplot(mdf$RH,data=mdf,xlab="Relative Humidity",ylab="Temperature in Celcius")

# there fore it can be observed that Relative humidity decreases with increases in temperature