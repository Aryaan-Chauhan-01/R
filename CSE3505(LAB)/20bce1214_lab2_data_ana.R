#array manipulation
die<-c(1,2,3,4,5,6)#creating object of die
dim(die)<-c(2,3)
die
dim(die)<-c(3,2)
die

#matrix
die<-c(0,2,3,4,5,6,7,8)
m<-matrix(die,nrow=4)
m
die<-c(0,2,3,4,5,6,7,8,9,10)
m<-matrix(die,nrow=5)
m
die<-c(0,2,3,4,5,6,7,8)
m<-matrix(die,nrow=3,byrow=TRUE)
m
die<-c(0,2,3,4,5,6,7,8)
m<-matrix(die,nrow=2)
m
die<-c(0,2,3,4,5,6,7,8)
m<-matrix(die,nrow=2,bycol=TRUE)#this will print undesired (3*3)
m
#array
ar<-array(c(11:14,21:24,31:34),dim=c(2,2,3))
ar
ar<-array(c(11:19,21:29,31:39),dim=c(3,3,3))
ar
#display only the diagonal elements of a matrix
die<-c(0,1,1,1,0,1,1,1,0)
m<-matrix(die,nrow=3)
m
class(m)
#class unclass
gender<-c("female","male")
class(gender)
unclass(gender)

#Question 1
v1<-c(1,2,3)
v2<-c(11,12,13,14,15,16)
arr<-array(c(v1,v2),dim=c(3,3,2))
arr

#q2
rname<-c("r1","r2","r3")
cname<-c("c1","c2","c3")
mname<-c("mat1","mat2")
v1<-c(1,2,3,4,5,6,7,8,9)
v2<-c(1,2,3,4,5,6,7,8,9)
ar1<-array(c(v1,v2),dim=c(3,3,2),dimnames = list(rname,cname,mname))
ar1
#q3

print(ar1[2,,2])#printing 2nd row of 2nd matrix of previous case
print(ar1[,2,1])#printing 2nd column of 1st matrix of previous case
print(ar1[2,3,2])#printing element at 2nd row,3rd column and 2nd matrix
print(ar1[,,2])#printing the 2nd matrix

#q4
 M1<-ar1[,,1]
 M2<-ar1[,,2]
 M3<-M1+M2
 M3
 
 M1
 apply(M1,1,sum)#1-along row
 apply(M2,2,sum)#2-along column
 ar1
 apply(ar1,1,sum)#1-along row
 apply(ar1,2,mean)#mean along column
 
 #q5
 h1<-c("ace","king","queen","jack","ten","spades","spades","spades","spades","spades")
 M2<-matrix(h1,ncol=2)
 M2
 hand2<-c("ace","spades","king","spades","queen","spades","jack","spades","ten","spades")
 M1<-matrix(hand2,ncol=2)
 M1