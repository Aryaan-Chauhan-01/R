x<-c(12,7,3,4,2,18,2,54,-21,8,-5)
result.mean<-mean(x,trim=0.3)#trim will arrange the elements is asscending order and remove the 1st 3 and last 3 elements and find the mean
print(result.mean)

b<-c(3,4,5,6,12)
median(b)
a<-c(3,4,5,12)
median(a)
b<-c(3,4,5,6,12,14)
median(b)
b<-c(3,4,5,6,12,14,14)
median(b)

x<-c(34,56,87,65,34,56,89)
sd(x)#standard deviation of x

#finding covariance by formula wise not the inbuilt function
x<-c(25,27,29)
y<-c(5,15,9)
xdev<-x-mean(x)
xdev
ydev<-y-mean(y)
xdev_ydev<-xdev*ydev
xdev_ydev
sumxdev_ydev<-sum(xdev_ydev)
cov_xy<-sumxdev_ydev/(3-1)
cov_xy

#finding covariance by the inbuilt function
x<-c(25,27,29)
y<-c(5,15,9)
cov(x,y)

#stock price case study
AAPL<-c(92.04,93.59,94.4,95.6,95.89)
MSFT<-c(48.43,49.44,50.54,51.17,51.16)
result_cov1<-cov(AAPL,MSFT,method="spearman")#default method is "pearson"
result_cov1
result_cov2<-cov(AAPL,MSFT,method="pearson")#default method is "pearson"
result_cov2
result_cov3<-cov(AAPL,MSFT,method="kendall")#default method is "pearson"
result_cov3

result_cor1<-cor(AAPL,MSFT,method="spearman")#default method is "pearson"
result_cor1
result_cor2<-cor(AAPL,MSFT,method="pearson")#default method is "pearson"
result_cor2
result_cor3<-cor(AAPL,MSFT,method="kendall")#default method is "pearson"
result_cor3

#create covariance matrix
mydata<-data.frame(Appearance=c(8,8,8,9,7,9,9,7,8,9),
  Thckness=c(8,8,7,7,7,8,9,8,7,9),
  Spreadability=c(7,9,9,9,8,8,7,8,6,7))
mydata
cov(mydata)
cor(mydata)