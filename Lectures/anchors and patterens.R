#Regular Expressions


#Meta-characters

# \ $ | . () [ { * + ?

#No special meaning for the meta characters
# put \\ in front of them

#if you want to search for "ab?", you would actually need to search for "ab\\?"
# \ uses \\

#need a vector to search inside
search.this<-c('b','B','boo','Boo','ban','a scary booounny','bpo')

#make up classes of things to search for
# exactly of the things inside here[aieou]
#pattern='b[aieou]'
library(stringr)
str_subset(string = search.this,pattern="b[aieou]")

#anything but [aieou]
str_subset(string = search.this,pattern="b[^aieou]")

#[A-G],[a-z],[0-9],[A-Ga-g0-7]
#[[:upper:]],[[:lower:]],[[:alpa:]],[[:digit:]],[[:alphanum:]],[[:blank:]]
#[[:punct:]]

search.this<-c('b','B','boo','Boo','ban','a scary booounny','bpo','bean')
str_subset(string = search.this,pattern="b[aeiou]{2}")

str_subset(string = search.this,pattern="b[aeiou]{1,2}")

str_subset(string = search.this,pattern="b[aeiou]{2,}")

#? * +
#? optional, if it shows up,only match once
#* optional,zero matches or more
#+ not optional,needs to appear at least once

search.this<-c('b','B','boo','Boo','ban','a scary booounny','bpo','bean','bue','a happy bounty',
               'beautiful','beady','beeeee')
str_subset(string = search.this,pattern="b[aeiou]?")

str_subset(string = search.this,pattern="b[aeiou]+")

#anchors

search.this<-c(" dogs are fun","dogs are fun","a dog is fun","all dogs are fun",
               "funny dog","what is adog")

#anchors-^,$,\\b,\\B
#$^-looks at start of a string
# $-look at end of a string
# \\b-word boundary
#\\B-not a word boundary

str_subset(string = search.this,pattern = "\\bdog")

#The period . (I don't care what is there)
search.this<-c('dag','dig','dug','dog','dtg','d  g','dx','dogs')
str_subset(string = search.this,pattern = 'd.g')

#Quantifiers ?,+,{2,3}

#Groupings-Group characters together- either or

search.this<-c('The bad dog.','the bad dog','THe bad bad bad dog',
               'tHE bad tin dog','The dog','Oh! the dog ran')

#Grouping is going to be a string of characters inside ()
str_extract(string = search.this,pattern = '(bad)')
str_extract(string = search.this,pattern = '(bad )')
str_extract(string = search.this,pattern = '(bad)+')
str_extract(string = search.this,pattern = '([Tb][ha][ed] )+')
str_extract(string = search.this,pattern = '(The|bad )+')

#Back references with the groupings

#When we make groupings,they are numbered

search.this<-c(" to be or not to be",'to be or not be to')
str_extract(string = search.this,pattern='(..) (..).*\\1 \\2')

#backreferences with string replacements

search.this<-c('Number8675', 'Number8794')#-----all these id should start with '000-'
str_replace(string = search.this,pattern='(Number)([0-9])[0-9][0-9][0-9])'
            ,replacement = '\\10000\\2')
