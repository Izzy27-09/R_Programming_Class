#dplyr
library(dplyr)

#GroupingData

num.var1<-10:1
num.var2<-c(100,70,60,10,20,40,50,30,80,90)
char.var3<-c('A','B','C','C','C','B','A','A','C','B')
log.var4<-c(T,F,F,F,T,T,F,F,T,T)
dat<-data.frame(num.var1,num.var2,char.var3,log.var4)
dat
new.tib1<-group_by(.data = dat,char.var3)#always produces a tibble
new.tib1
new.tib2<-group_by(.data = dat,char.var3,log.var4)
new.tib2

ungroup(new.tib2)

#Use groups with the summarize(summarise) command
summarise(.data = new.tib1,mean.var1=mean(num.var1),
          sd.var2=sd(num.var2),
          n())

summarise(.data = new.tib2,
          minnie=min(num.var2),
          maximus=max(num.var1))

summarise(.data = dat,
          mean.var1=mean(num.var1,),.by=c(char.var3,log.var4))

#Manipulate Rows of a dataframe or tibble

dat

dat|>
  filter(num.var1>4,num.var2<50)


#sorting dataframes and tibbles
dat
dat|>
  arrange(char.var3,num.var2)

#Slicing a dataframe/tibble

dat|>
  slice(c(1,6,4))

dat|>
  slice_tail(prop=.4)

dat|>
  slice_max(order_by = num.var2,n=3,with_ties = T)

dat|>
  slice_sample(prop =.2,weight_by = 1:10,replace = TRUE)

#Stuff you can do to columns

num.var1<-10
num.var2<-40
char.var3<-'A'
log.var4<-F
fact.v5<-factor('Great')
NA.v6<-NA
tib<-tibble(num.var1,num.var2,char.var3,log.var4,fact.v5,NA.v6)
tib


tib|>
  select(c(1,4,5))

tib|>
  select(!num.var1:char.var3)

tib|>
  select(last_col(offset=2))

tib|>
  select(starts_with("num",ignore.case=T))

tib|>
  select(ends_with("V5",ignore.case=T))
tib|>
  select(matches(match="^(cin)",ignore.case=F))

renamed.tib<-tib|>
  rename(new.name=NA.v6, `new new name`=num.var1)
renamed.tib

tib|>
  relocate(num.var1,.after=num.var2)
