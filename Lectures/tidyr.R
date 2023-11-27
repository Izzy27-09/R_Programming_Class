library(tidyr)

# Tentative Plan
#Lab today
#Homework:Due on Monday after Break
#two classes that week after break
#One lab day-might be an acutal lab/lecture more
#"Final Exam"-more complicated homework.That is due the day of the scheduled final exam
#(No in class final exam)
#One topic that I won't get to...API...Optional time during finals for you to see if you.Won't be on exam


#tidyr package
library(tibble)

#separate and unite
stuff.tib<-tibble(secret_identities=c("Kent, Clark","Arden, Irma","Stacy, Gwen"),
                  gibberish_information=c("10_Blue-5_F","20-Pink-2_T",
                                          "40-White_3_T"))
stuff.tib

stuff.tib|>
  separate(col = secret_identities, into = c("Last","First"))


stuff.tib|>
  separate(col =gibberish_information, into = c("var1","color","var3","logical"),
           convert = T)

stuff.tib|>
  separate(col =gibberish_information, into = c("var1","color","var3","logical"),
           convert = T,sep = "(-|_)")

stuff.tib|>
  separate(col =gibberish_information, into = c("var1","color","var3","logical"),
           convert = T,sep = "-",fill = "left")

stuff.tib|>
  separate(col =gibberish_information, into = c("var1","color","var3","logical"),
           convert = T,sep = "-",fill = "right")

split_tib<-stuff.tib|>
  separate(col = secret_identities, into = c("Last","First"))
split_tib

split_tib|>
  unite(col = "NAMES TOGETHER AGAIN",Last,First,sep = " ")

split_tib|>
  unite(col = "NAMES TOGETHER AGAIN",Last,First,sep = " ",remove = F)


complete.this<-tibble(var1=c("t1","t1","t2","t2"),
                      var2=c("A","B","B","B"),
                      var3=c("x","z","y","g"),
                      var4=c(5,10,5,89))
complete.this

complete.this|>
  complete(var1,var2,var3)

complete.this|>
  expand(var1,var2,var3)

#fill
fake.tib<-tibble(name=c("Clark",NA,NA,"Irma",NA,NA,"Kitty"),
                 numbers=1:7)
fake.tib

fake.tib|>
  fill(name,.direction = "up")


#drop_na

fake.tib|>
  drop_na()

fake.tib|>
  replace_na(replace =list(name="MISSING"))

#uncount

tall.info<-tibble(firstcat=letters[1:3],
                  secondcat=LETTERS[1:3],
                  frequencies=c(2,5,1))
tall.info

tall.info|>
  uncount(weights = frequencies)


tall.info|>
  uncount(weights = frequencies,.id="HAPPY")

