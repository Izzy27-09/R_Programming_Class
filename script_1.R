# Numerical Data
# Interger/ Floating Point Data
2 # Floating Point
2L # Integer

2 # Vector of one number/with one element
c(2,3,8,10) #combine command

#Perform Mathematics on them

3+2
3-2
3*3
3/2

abs(-7.3)
sqrt(2)
3^2
3**2
log(1)
log(10,base = 10)
10 %/%3 # quotient
10%%3 #remainder

#Mathoperations with longer Vectors
c(1,2,3,4,9)+c(-1,12,15,0,13)
c(1,2,3,4,9)-c(-1,12,15,0,13) 
abs(c(1,2,3,4,9)-c(-1,12,15,0,13)) #abs function/command is vectorized

#Vectorized Function works element by element
sqrt(c(2,-10,-11,9))
#recycles shorter vectors
c(1,2,3,4,9)+1 #Vector with 4 elements plus vector of 1 element
c(1,2,3,4,9)+c(3,7)

pi
options(digits = 20)
pi

