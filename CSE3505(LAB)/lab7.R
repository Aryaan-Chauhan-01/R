#function to calculate the area of a circle
carea<-function(r)
{
  area=pi*r^2
  return(area)
}
carea(4)
#function to calculate area of rectangle
rarea<-function(l,b)
{
  area=l*b
  return(area)
}
rarea(5,9)
#function reverse orders of numbers from 1 to 20
reverse<-function()
{
  for(i in 20:1)
  {
    print(i)
  }
}
reverse()
#function to swap two numbers
swap<-function(x,y)
{
  t<-x
  x<-y
  y<-t
  sprintf("After swap x=%d and y=%d",x,y)
}
x<-6
y<-7
swap(6,7)
#function to print squares of the numbers from 1 to a number
sqr<-function(a)
{
  i<-1
  while(i<=a){
    b<-i^2
    print(b)
    i=i+1
  }
}
sqr(100)
#functions with default arguments and perform as calculaator
calculator<-function(a,b)
{
  a=readline("number a :")
  b=readline("number b :")
  a=as.integer(a)
  b=as.integer(b)
  sum<-a+b
  d<-a-b
  mul<-a*b
  div<-a/b
  mod<-a%%b
  sprintf("sum=%f subtraction=%f mul=%f div=%f remainder=%f",sum,d,mul,div,mod)
}
calculator(5,4)
#matrix multiplication of 3x3 matrix
matmul<-function(a,b)
{
  r<-a%*%b
  return(r)
}
v2<-c(1,2,3,4,5,6,7,8,9)
v3<-c(11,12,13,14,15,16,17,18,19)
x<-matrix(v2,nrow=3,ncol=3)
y<-matrix(v3,nrow=3,ncol=3)
x
y
matmul(x,y)
#a function to print elements that are in vector a but not in vector b
f1<-function(a,b){
  d1<-setdiff(a,b)
  return(d1)
}
x<-c(6,20,35,40,12,17)
y<-c(20,97,16,12,35,96)
x
y
r1<-f1(x,y)
r1#present in x but not in y
# function to get three vectors A,B&C and perform AUB, A(intersection)B,A-B,A(intersection)(B U C),AU(B(intersection)C)
f2<-function(a,b,c)
{
  u1<-union(a,b)#AUB
  print(u1)
  i2<-intersect(a,b)#A(intersection)B
  print(i2)
  d2<-setdiff(a,b)#A-B
  print(d2)
  c1<-union(b,c)
  cc1<-intersect(a,c1)#A(intersection)(B U C)
  print(cc1)
  c2<-intersect(b,c)
  cc2<-union(a,c2)#AU(B(intersection)C)
  print(cc2)
}
x<-c(1,2,3,4,5)
y<-c(3,4,5,6,7,9)
z<-c(1,6,2,8,9)
r2<-f2(x,y,z)

#Read the content of ‘Events.csv’ in a data frame and view it.
mdata<-read.csv("event.csv")
mdata
#Access the scores of participants in event2(which in this case is basketball) using the column name.
mdata$basketball
#Use index number to retrieve the same data. here basket ball is saved in column number 3
mdata[,3]
#Extract the score of third participant in event3.i.e. row 1 and column 4
mdata[3,4]
#Extract the scores of the first and second participant in all the events. <=25 score is not counted else it is not counted
sc<-function(a,b)
{
  print(a[b,1])
  for(i in 2:8){
    if(a[b,i]<=25){
      print(0);
    }else{
      print(a[b,i])
    }
  }
}
p1<-sc(mdata,1)
p2<-sc(mdata,2)
#Display the names and total scores of all participants. where score is considered only for >25
ts<-function(a,b)
{
  s<-0
  for(i in 2:8){
   if(a[b,i]<=25){
     s=s+0
   }else{
     s=s+a[b,i]
   }
   
  }
  return(s)
}
y<-c(0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)#an empty vector to store sum for each 20 participant
for(i in 1:20)
{
  y[i]<-ts(mdata,i)
}
mdata$total<-y
mdata[,c(1,9)]
#Make the column “name” as the row index of the data frame.
row.names(mdata)<-mdata$Name
mdata
# Display the names of the students participated in event3.
par3<-function(a){
  for(i in 1:20){
    if(a[i,4]>25){
      print(a[i,1])
    }
  }
}
par3(mdata)
#Obtain the names whose total score is above its average.
r4<-function(a,m)
{
  for(i in 1:20){
    if(a[i,9]>m){
      print(a[i,1])
    }
  }
}
m1<-mean(mdata$total)
r4(mdata,m1)

#Mass survey exercise
install.packages("MASS")
library(MASS)
str(survey)
print(class(survey))
print(typeof(survey))
print(nrow(survey))
print(ncol(survey))
dim(survey)
summary(survey)
colnames(survey)
head(survey,3)
tail(survey,2)