# Assignment Operator
# <-(=,->,<<-,->>)

output<-c(1,5,8)+c(4,8,10)
output
output+2
sin(output)
output<-c(output,-9999999)
output<-output/100
stuff<-output+10
firstnumber<-c(13,19,20)
secondnumber<-c(5,-10,22)
total<-firstnumber+secondnumber
total

#What names to use
# Use descriptive names
# They must be typed a certain way(can't start with number/should start with letter)
remove(total) # deletes variable

# Character Data(String Data)
#it eill be surrounded by quotes(",')
chara<-c('Bill',' is ','here','with')
newchara<-c(chara,"Sally",'to','the','bar')

#Operations on character data

pastedchars<-paste(chara,newchara,sep = '****')
paste(pastedchars,collapse = "!")

tolower('TRUth iS tHe wORSt')
toupper('TRUth iS tHe wORSt')

thisString<-"THis is a String that was randomly made"

chartr(old ="STHW" ,new ="sthw" ,x=thisString)
thisString

#extracting parts of a String
thisString
substring(text = thisString,first = 2,last = 12)
substring(text = thisString,first = 2,last = 12)<-'$'
thisString
