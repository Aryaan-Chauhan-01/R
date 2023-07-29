#data type vector
die<-c(1,2,3,4,5,6)
die
is.vector(die)
length(die)

#data type int
int<-c(-1L,2L,3L,4L) # by default numbers are double L signifies intger
int
is.integer(int)
typeof(int)

#data type string
text<-c("Hello","world")
text
typeof(text)
typeof("Hello")

#data type logical
logic<-c(TRUE,FALSE<TRUE)
logic
typeof(logic)
typeof(F)

#logical comparisons
a=4
b=2
c=3
d=1
a>b && a>c #comparing 3 variables
a>b & a>c
a>b && a>d

#data types and addition complex numbers
comp<-c(1+1i,2+4i,3+10i) #necessary to write number before i even if 1 or 0
comp
typeof(comp)
c1<-c(4+1i)
c2<-c(5+3i)
c3<-c1+c2 #addition
c3
c4=c2*c1 #multiplication
c4

#create an atomic vector that stores just the face names of cards in royal flush,for example. the ace of spades,king of spades, queen of spades and ten of spades

hand<-c("ace","king","queen","ten")
hand
typeof(hand)

#IDENTIFY the types of R objects in the given code
rm(list=ls()) #rm is used to remove previous objects and perform the actions in () #list stores variable values even if it is  of different data types
#assign a1 with a value
a1<-10L #int
a1
s1<-"Hello" #String
s1
cmp1<-21+10i #complex
cmp1
lg1<-TRUE #logical

class(a1)
typeof(a1)
class(s1)
typeof(s1)
class(cmp1)
typeof(cmp1)
class(lg1)
typeof(lg1)


#Identify the difference between list and vector and give example of each

#list is also an array like vector, but unlike vector it can store different data types in one list and can also be used as variable
comp2<-c(1+1i,2+4i,3+10i) #vector
listdemo<-list(1L,2+3i)#list
rm(list=ls(1L,2+3i))#also creating list just another method

#create 4 lists of reg_no, name, dept and university_affiliated
list1<-list("U001","A007","B003","I075")
list2<-list("Tom","Dick","Harry","Sita")
list3<-list("CSE","ECE","BRS","ME")
list4<-list("MIT","AIT","Oxford","IIT")

list1[4]
list2[4]
list3[4]
list4[4]


#Ram Rs.A bought B chocolates, find cost of each chocolate

firstname="Ram"
lastname="Naresh"

A=100.5
B=20L
A
D=(100.5)*100
G=D%%100
H=D-G
C=H/100 #C storing the rupee part
C 
E=100/B
E
print(paste(firstname," ",lastname," has bought ",B," Chocolatate"))