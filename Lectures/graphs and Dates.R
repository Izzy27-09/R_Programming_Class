library(ggplot2)
library(tibble)

x.data<-c(0,1,4,9,16)
y.data<-c(0,15,20,30,200)
z.data<-sample(1:5)
dat<-data.frame(x.data,y.data,z.data)

p1<-ggplot(data=dat,mapping = aes(x=x.data,y=y.data,color=z.data))+geom_point(size=10)+
  scale_color_steps(name='Colour',n.breaks=5,high = 'red',low='purple')

p1+theme_classic()

#factors-factor are for cats
#types of data-used for categorical data
#The categories in your data set are going to be encoded as integers(in the background)
#it makes some regression possible

cat<-c('B','A','B','A','A','A','D','A')
table(cat)

factor.cat<-factor(cat)
factor.cat
table(factor.cat)

factor.cat<-factor(cat,levels = c('A','B','C','D'))
table(factor.cat)

#Other functions that are in R that let you play with factors
#We will care about the some that appears in the forcats package

library(forcats)
#fct_names()

fct_drop(factor.cat)

factor.cat


new.factor<-fct_relevel(factor.cat,c('D','A','C','B'))
new.factor

cat<-c('A','B','A','B','B','B','D','B')
table(cat)

factor.cat<-factor(cat,levels = c('D','B','A','B'))


fact<-data.frame(xx=fct_inorder(factor.cat))
fact

ggplot(data=fact,mapping = aes(x=xx))+geom_bar()

fct_recode(factor.cat,d='D',happy='A')
factor.cat
order.cat<-factor(cat,levels = c('D','C','A','B'),ordered = T)
order.cat

#Dates and Times
#Need the lubridate package

library(lubridate)

10-31-203
9/14/2023

#lubridate converts things that look like dates into nummerical values
#basically your "dates" are converted into the number of seconds since January 1st 1970

#Dates first
#ymd,mdy,dmy,ydm,myd,dym

date.guy<-mdy('9/14/2023')
str(date.guy)
typeof(date.guy)

#dates and Times
#similar function
#mdy_hms()
mdy_h('Oct 24,2023 12')
