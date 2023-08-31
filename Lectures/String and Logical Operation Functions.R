# more stuff with character data
#more functions

#These functions are not built into R

#This loads more character data commands
#all of the commands in the stringr package all have the names begin the same way
library(stringr)

#str_c is bascially paste command
str_c("Happy",c('camper','jumper','pappy'),sep = " ",collapse = '+++')

#Reduces a character vector to a single string.
#This is a summary function because regardless of the length of the input x,
#it always returns a single string.
str_flatten(string = c('camper','jumper','pappy'),collapse = '+++')

newcharadata<-c('kiwi','mango','blueberry','ithaca-brockpot-martin-rochester-rotterdam')

# takes a character vector and returns a list.
str_split(string = charadata,pattern = '-')

#How many characters are in a string
str_length(string = charadata)
nchar(charadata)

# Substrings
str_sub(string = charadata,start = 3,end = 6)
str_sub(string = charadata,start = 3,end = -6)#counts backwards
str_sub(string = charadata,start = 3,end = -6)<-'A'
charadata

newcharadata<-c('kiwi','mango','blueberry','ithaca-brockpot-martin-rochester-rotterdam')
#pad a string
str_pad(string = newcharadata,width = 9,side = 'both',pad = '0')


#trim out extra space
needst<-'    this has a bunch of    extra spaces    '
str_trim(string = needst,side = 'both')
str_squish(string = needst)

#sort things in a character vector
sort_this<-c("card","apple","epi-pen","blue mosque","tomatoes")
str_sort(x=sort_this,decreasing = FALSE)

#Logical Data

#Two values for logical data
#True,False

T
TRUE
F
FALSE

logi<-c(T,TRUE,FALSE,F)
mlogi<-c(T,F,T,F)

#Operations on Logical Vectors
#And, Or, Not
#Not-Negation !
logi
!logi

#AND Operator &
logi&mlogi
logi&c(T,T)

#Or Operator |
logi| mlogi
 
#are any of the values in the vector true?
any(logi)
 #are all of the values TRUE in vector>
all(logi)
