install.packages("nycflights13")
install.packages("data.table")
library(nycflights13)
library(data.table)
flights<-data.table(flights)
ans<-flights[origin=="JFK" & month==6L]
ans
ans1<-flights[origin=="EWR" & dest=="IAH"]
ans1
#data.table package
library(data.table)

A=rnorm(6)
df<-data.frame(A=rnorm(6),B=rep(c("x","y"),each=3),C=rnorm(6))
df

dt<-data.table(A=rnorm(6),B=rep(c("x","y"),each=3),C=norm(6))
dt
#2
x<-c(10,4,5,6,8,1,7,3,2)
order(x)
list(x)
mean(x)
length(x)
rep(x)
rnorm(x)
#3
df1<-data.frame(A=c(1,2,3,4,5,6),B=c(10,9,8,10,5,6),C=c(45,6,7,97,6,7))
names(df1)[1]<-"column1"
names(df1)[2]<-"column2"
names(df1)[3]<-"column3"
df1
df1$column4<-c(60,61,62,63,64,65)
df1
df1[["column3"]]<-NULL
df1
df1[["column3"]]<-df1[["column1"]]+df1[["column4"]]
df1<-df1[-c(1,4)]
df1

#4
library(data.table)
dt
w1<-dt[with(dt,C>0)]
w1
w2<-dt[which(B=="x")]
w2
(dt1 <- data.table(A = letters[rep(1:3, 2)], X = 1:6, key = "A"))
(dt2 <- data.table(A = letters[rep(2:4, 2)], Y = 6:1, key = "A"))
merge(dt1, dt2, allow.cartesian=TRUE)

dt3<-data.table(A=c("A","B","C"),B=c(1,3,6))
dt4<-data.table(C=c("p","q","r"),D=c(6,7,9))
setkey(dt3,B)
setkey(dt4,D)
dt3[dt4,roll=TRUE]
dt3[dt4,roll=TRUE,rollends=c(TRUE,FALSE)]
dt[,.SD]
dt[,.SD,.SDcols=c("A","C")]
dt3["A",on="A"]
DT <- data.table(x=rep(c("b","a","c"),each=3), y=c(1,3,6), v=1:9)
X = data.table(x=c("c","b"), v=8:7, foo=c(4,2))
DT[X, on="x", mult="first"]
DT[X, on="x", mult="last"]
DT[.("b", 1:2), on=.(x, y), nomatch=NULL]

#q5
library(nycflights13)
ans1 <- nycflights13::flights[origin = "JFK" & month==6L]
ans1
ans2<- flights[origin=="JFK" & month==6L]
ans2
ans3 = flights[origin = "EWR", dest = "IAH"]
head(ans3)
ans4 <- flights[order(origin,-dest)]
head(ans4)