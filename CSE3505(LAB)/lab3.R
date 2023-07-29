#dataframe
df<-data.frame(ace=c("ace","two","six"),suit=c("clubs","clubs","clubs"),value=c(1,2,3))
df
typeof(df)
class(df)
str(df)#used to assign objects of size
summary(df)
head(df)
tail(df)#top6 rows 
tail(df)#bottom 5 rows
data1<-data.frame(id=1:3,weight=c(20,27,24))
names(df)
#ways to add columns and initialize with 0
df$rank<-c(3,2,1)
df

#create a data frame which has 3 columns mark1,mark2&mark3 named by 5 students,print name &highest mark in each category(mark)
mdf<-data.frame(mark1=c(99,98,97,95,94),mark2=c(97,98,99,100,95),mark3=c(99,98,100,94,95),name=c("Tom","Dick","harry","Sita","Ram"))
i=which.max(mdf$mark1)
mdf$mark1[i]
mdf$name[i]
j=which.max(mdf$mark2)
mdf$mark2[j]
mdf$name[j]
k=which.max(mdf$mark3)
mdf$mark3[k]
mdf$name[k]
mdf$total<-rowSums(mdf[1:3])
mdf
mdf$average<-rowMeans(mdf[1:3])
mdf
l=which.max(mdf$average)
mdf[l]
mdf
mdf[which.max(mdf$average),1:6]
#write.csv(mdf,"marks20bce1214lab3.csv")

#q1 define a table within a column and diferent types colums using data.frame() using
df1=data.frame(Flavours=c("Chocalate","Vanilla","Butter-Scotch","Fruit-Mix"),Unit_Cost_Rs=c(25,25,30,30),Units_sold=c(94,97,70,75))
df1
#q2
data(mtcars)
car<-mtcars
mtcars #viewing from mtcars
v1<-car$mpg
v2<-car$cyl
v3<-car$disp
v4<-car$hp
nvar<-mtcars$disp+mtcars$hp
mtcars1<-rbind(v1,v2,v3,v4)#horizontal join
mtcars1
mtcars2<-cbind(v1,v2,v3,v4)#vertical join
mtcars2
ob_subset<-mtcars[4:10,]
ob_subset
#q3
subset3<-subset(mtcars,mpg>18)[,c(1,2)]
subset3
subset4<-subset(mtcars, mpg>18 & cyl>5)[,c(1,2)]
head(subset4)
subset5<-subset(mtcars, mpg>18 & cyl>5, select=c(-mpg, -cyl))
head(subset5)
