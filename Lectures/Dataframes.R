#Dataframes=container for your data

numbers<-2:11
charaData<-LETTERS[2:11]
logicalStuff<-c(T,T,T,T,T,F,F,T,T,F)
dat<-data.frame(numbers,charaData,logicalStuff)

#Dataframe think of a grid
#number of rows=number of obs
#number of columns/components=number of variables
#names of columns follows almost the same rules as for variables that we would use when assigning things
#use `` if you want to make a bad name into a good name for dataframe

str(dat)
#extracting things works in one sense like pulling things from a matrix
str(dat[,1])
str(dat[1])
str(dat[[1]])
str(dat[,c(1,3)])
str(dat[c(1,2,5),])

dat[dat[3]==TRUE,]
dat[2,3]<-NA

#Adding things to data frame

dat$v1.squared<-(dat$numbers)^2
dat$v1.squared<-NULL
head(dat)

#Something completely different but exactly the same
#Tibbles
#They are someones idea of a better dataframe
#Both are shown, because some functions work with tibble but not dataframe and vice versa

#as.data.frame()
#as_tibble()

#Tibbles need to be loaded on your machine
library(tibble)
tib<-tibble(numbers,logicalStuff,charaData)
str(tib)

#Something nifty

tib2<-tibble(x=1:10,y=x^2)
tib3<-tibble(tib2,tib)
tib3

#Something actually different
#Breathe
#How to I collect a bunch of commands together and then execute them with a single line of code

#How to make a function

#FunctionName<-function(arguments){
#         steps that you want completed
#         return(output)
#}

#Descisions-How to make code to do descions
# if else statements
#if statements
#ifelse function


#if else statement
#if(condition){
#  steps if condition is true
  
#}else if(condition2){
#  otherwise perform this
#}else{
  #do this if neither of above is true
#}
#Condtions evaluated as TRUE or False
#The first True is the only step of steps that are re completed