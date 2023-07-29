#reading a table like file
x1<-read.delim('data1.txt')
x1
#reading .xls file
install.packages("xlsx")
library(xlsx)
x2<-read.xlsx('data2l5.xls',sheetIndex = 1)
x2
#reading a .txt file line by line
x3<-readLines("dataline.txt")
x3
#reading .xml file
install.packages("XML")
library(XML)
x4<-xmlParse("nysk.xml")
x4
#data manipulation on .xls file which above has been stored in 2
install.packages("dplyr")
library(dplyr)
filter(x2,COST>50000)
select(x2,starts_with("COST"))
select(x2,-starts_with("ID"))
select(x2,contains("A"))
arrange(x2,COST)
arrange(x2,desc(ID))
mutate(x2,INTEREST=COST*0.01)
summarize(x2,med=mean(COST))

#date
d<-as.Date("2021-6-15")
d
weekdays(d)
d+5
d+1:5
weekdays(d+1:5)
dt<-seq(d,by="2 months",length.out=6)
dt