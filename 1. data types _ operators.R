# set working directory ---------------------------------------------------

setwd('D:/Career/My Training Material/Edvancer Oct 2019 Data Science_R')
setwd("D:/Learning/Learn R/R_programming data and codes")

# ctr + shift+ h
# 
# Use '/' or '\\'

# this is a comment [ctr +  shift + c]


x = 20

#* hsggj]
#* bhhfer


# 34+23

# Contents ----------------------------------------------------------------

# Data Types & Coercion in R
## Constant & Variables in R
## In built functions in R
## Operators in R
## simple arithmetic in R
## if else condition
## Switch case
## while
## Break
## Next
## Repeat
## Functions
## Sequence Generation in R


# Note Points -------------------------------------------------------------


# The hash is used to add comments
# you can select multiple lines and use the 
# shortcut for commenting : ctrl + shift + c
# shortcut for clearing console : ctrl+l
# hit tab/enter for auto-completion

# R is case sensitive


# More than one expressions can be placed on a single line separated 
# by semi-colons, for example

5; 7; 2 - 3

# Data Types in R ---------------------------------------------------------

# Numeric data (approximations of the real numbers)
# Integer data (whole numbers)
# Character data (strings/text)
# Logical data (TRUE or FALSE) means Boolean
# Complex (includes imaginary part)
# Raw Binary data 
# https://www.rapidtables.com/convert/number/ascii-to-hex.html


class(3) # To check data type
class(3L)
x = as.integer(3)
class(x)

class('hello')
class(T); class(TRUE) # In python we write 'True'

class(2 + 3i)


my_character <- "forty-two" 
# The quotation marks indicate that the variable is of type character
my_numeric <- 42.3
my_integer = 23L
my_complex = 2 - 3i
my_logical <- FALSE

# To check the class of variables
# Assign the data type
datatype1 = class(my_character)
datatype2 = class(my_numeric)
datatype3 = class(my_integer)
datatype4 = class(my_complex)
datatype5 = class(my_logical)

# Print the types
datatype1
datatype2
datatype3
datatype4
datatype5

# simply use class(my_numeric)

class(42.3L); class(42.3); # See warning msg in first example
class(23); class(23L); 
class(0); class(0L) 
pi; class(pi); class(piL) # PiL is not any object in R
as.integer(pi)


x = 8/0; x
class(x)

x = 0/0; x
# NaN means not a number

class(0/0); class(5/0); class(Inf)   
# Special number: Nan or Inf are numeric data type


x = 5
is.numeric(x)

x = T
is.logical(x)

x = '67'
is.character(x)
is.numeric(x)

x = 5/0
is.finite(x)
x
is.infinite(x)

x = 0/0
is.nan(x)

x = c(23, 45, NA, 43)
is.na(x)


# Coercion in R -----------------------------------------------------------

# anything within quotes is character for R

v1 = "23.45"; v1
class(v1)

# you cannot do numeric operation on this

v1 + 2

# change the type, given it is possible to convert the number

v2 = as.numeric(v1)
v2

#function will not change the input, only the output gets changed
class(v2)
class(v1)

v2 + 2

v1 = "King"
class(v1)

v2 = as.numeric(v1)
v2
class(v2)

as.integer(23.6)
as.logical(-23)
as.logical(0)
as.character(23)


as.integer(23.6)
as.logical(23)
as.logical(0)
as.character(23)
as.numeric(T)
as.numeric(F)
as.integer(as.numeric(T))
class(as.integer(as.numeric(T)))
as.complex(as.integer(as.numeric(T)))
as.character(as.complex(as.integer(as.numeric(T))))
as.complex("3+2i")
class(as.complex("3+2i"))
class(as.logical("3+2i"))
as.logical("3+2i")
as.logical(3)
as.logical(-3)
as.logical(0)
as.numeric(3-4i)
as.numeric(3.25-4i)
as.integer(3.25-4i)


# Numbers with Exponents
 
# For very big numbers or very small numbers R (like many other tools) uses 
# the following scheme:
#1.2e3 means 1200 because the e3 means 'move the decimal point 3 places to the right' 1.2e-2 means 0.012 
#because the e-2 means 'move the decimal point 2 places to the left'

x = 1.2e12; x
y = 1.2e-8; y


options(scipen = 999) # Disable scientific notation
options(scipen = 0) # Enable scientific notation


# Constant & Variables in R -----------------------------------------------

# These are in-built constants
pi
letters
LETTERS
month.name
month.abb

# Variables: Variables are used to store data, 
# whose value can be changed according to our need. 
# Unique name given to variable (function and objects as well) is identifier.


# To define variables

x  =  5; x

x = "something"
x

x = 10

## naming rules
1.more  =  2.34 #Throws an error [notice red dot on the left]
one.more = 2.34
onemoreobject = 2.34
one.more.object = 2.34

disc_pr = 45
disc.pr = 45
DiscPr = 45
disc pr = 5 #Throws an error 
_discpr = 45 #Throws an error
.disc.pr = 45
.1discpr = 45 #Throws an error


# An identifier/variable can contain 
# letters, numbers, dots(.) and underscores ( _ )
# It should not have other special characters in the name and no space
# It should not start with a dot followed by a number (eg:- .2iota)
# It should not start with an underscore or a number (eg:- _iota)
# It should not be a reserved keyword like for, if, else, in, next, etc.
# it should ideally not be an in-built constant, e.g., pi, letters, etc.

# objects can be reassigned on the fly
# variables in R can dynamically assigned 
# [we don't need to define data type in advance]

x  =  "Hadley Wickham"


# removing objects from environment ---------------------------------------


rm(one.more)
rm(one.more,one.more.object,onemoreobject) # removing objects by name

rm(list = ls()) # removing all objects or use the broom icon


## Inbuilt mathematical functions in R -----------------------------------------------------
x = 10
exp(x)

log(x); log(10); log(exp(1)) # log to base e of x
log10(x); log10(100) # log to base 10 of x
log(x,n); 
log(9, 3) # log to base n of x
sqrt(x); factorial(x); gamma(x)
choose(n,x) # Binomial coefficient nCx
lgamma(x) # natural log of gamma (x)
floor(x) # greatest integer <x
ceiling(x) # smallest integer >x
trunc(x) # closest integer to x between x and 0 trunc(1.5) =1, trunc(-1.5) =???1 
# NOTE: trunc is like floor for positive values and like ceiling for negative values
round(x, digits = 0) # round the value of x to an integer
signif(x, digits = 6) # give x to 6 digits in scientific notation
runif(n) # generates n random numbers between 0 and 1 from a uniform distribution
cos(x) # cosine of x in radians
sin(x) # sine of x in radians
tan(x) # tangent of x in radians
acos(x); asin(x); atan(x) # inverse trigonometric transformations of real or complex numbers
acosh(x); asinh(x); atanh(x) # inverse hyperbolic trigonometric transformations of real or complex numbers
abs(x) # the absolute value of x, ignoring the minus sign if there is one

# Examples (see answers and warnings)
sin(pi/2); cos(pi/2)
runif(5); runif(-3)
sqrt(16); sqrt(-9); sqrt(-9 + 0i)
factorial(5); factorial(-2); factorial(0)
gamma(3); gamma(0.5); gamma(1.4); gamma(0); gamma(-2)
log(2); log(10); log10(10); log(0); log(Inf); log(-Inf)


# Operators in R ---------------------------------------

# Commonly Used Operators in R

# Arithmetic operators are # + - */%% ^ 
# Relational/comparison operator are # > >= < <= == != 
# Logical operators are !, & and |,  && and ||
# Model formula ~ 
# Assignment operators are <- = <<- -> ->>
# List indexing (the 'element name' operator) is $ 
# To create a sequence :


# Arithmetic Operators ----------------------------------------------------


# An addition
5 + 5

# A substraction
5 - 5

# A multiplication
3 * 5

# A division
25/2

# Exponentiation
2^5
2**5
2*2*2*2*2

# More examples

z = 2 - 3i; z
t = 2 + 3i
z + t
z*t
z/t


# Modulo and Integer Quotients

#Integer quotients and remainders are obtained using the notation %/% 
# (percent, divide,percent) and %% (percent, percent) respectively.

# To know the integer part of a division 
17/3
17 %/% 3 # how many 3s are there in 17
28 %/% 6

# To get the reminder/ The modulo operator

17 %% 3
28 %% 6


100 %% 32
30 %% 12
30 %% 15

# Even Odd numbers
21 %% 2 == 0
20 %% 2 == 0

x <- 36
if (x %% 2 == 0) {
  print('even number')
} else {
  print('odd number')
}


# Relational/Comparison Operators -------------------------------------------------------

x = 7
y = 9

x > y

x < y

x == y # check if x is equal to y
x == 4+3
y == 3*3

x != y # check if x is not equal to y
x >= y
x <= y


z = x > y
z


# Logical Operators -------------------------------------------------------

x = T; y = F

x | y # OR Operator
x & y # AND operator
!x # NOT operator
!y

!!x # double negation same as vector 'x'

x = c(T, T, F, F); x
y = c(T, F, T, F); y

!x
!y
!!x # double negation same as vector 'x'

x | y # performs element-wise operation
x & y # performs element-wise operation

x || y # perform operations on only the first element of each vector
x && y # perform operations on only the first element of each vector


x = 10
x >= 1
x <= 19

T & T

x >= 1 & x <= 19

y = "SAchin"

y == "sachin"

y == "SAchin"


x = 1; y = 2

x != 10
x == 1 & y == 2
x < 1 & y < 2


# Assignment Operators -----------------------------------------------------

x = 5
x
print(x)

x <- 15 # alt + '-'
x

20 -> x
x


# More Examples -----------------------------------------------------

# Assign the value 42 to x
x <- 42; x = 42

# This is logical Operators [Notice space]
x < -42; x > -42; 

x = 20; # It reassigns value 20 to x
x <= 20; x >= 20; x != 20; x != 15; 
x == 20 

x <- c(T, T, F, F)
y <- c(T, F, T, F)
z <- c(1, 0, 1, 0)

x & y 
x | y

x & z 
x|z # z is coerced to logical vector automatically

x <- 1:20; x # To create a sequence 1 2 3 .... 20
x = 5:1; x; x = 1:-2; x; x = -3:1; x

# Print out the value of the variable x
x = 6
print(x) # To explicitly print value of x
x # Simple way to print x/ To auto print the value of x

# Assign the value 5 to the variable called my_apples
my_apples <- 5
# Print out the value of the variable my_apples
my_apples

# Assign a value to the variables called my_apples and my_oranges
my_apples <- 5
my_oranges <- 6
# Add these two variables together and print the result
my_fruit = my_apples + my_oranges
# Create the variable my_fruit
my_fruit

### Control Structures in R

# if else statement -------------------------------------------------------

exp = 4

if(exp == 0){
print('read this book!')
}

if(exp > 0){
print('read this book!')
}

exp=0

if (exp == 0){
  print('Go through material.')
} else{
  print('Try an exercise.')
}


# Example
age <- 20

if (age < 18) {
  print('minor')
}

if (age > 18){
  print("major")
}

age = 13

if (age < 18){
  print("minor")
} else {
  print('major')
}

weather = 'cold'

if (weather == 'rainy'){
  print('sit in balcony')
} else if (weather == 'sunny'){
  print('watch movie')
} else {
  print('enjoy a nap')
}


if(age > 18){
  print("Major")
} else{
  print("Minor")
}

ifelse(age>18, "Major", "Minor")

marks = 67

ifelse(marks > 60, "pass", "fail")


# Example

exp = 7

if(exp == 0){
  
} else if (exp < 10 & exp > 0){
  
} else {
  
}







x <- 8

if ( x < 0 ) {
  print('negative number')
} else if (x > 0) {
  print('positive number')
} else {
    print('zero')
  }

# Example: write a condition to set value of y is depending on 
# whether x > 3 or not

x = 10

if (x > 3) {
  y <- 10
} else {
  y <- 0
}

y

y = ifelse(x > 3, 10, 0)
y

# example

price = 250
if (price < 100){
print('low')
} else if (price > 300){
print('high')
} else {
print('medium')
}

# more examples
exp = 8

if (exp < 10){
  print('batch1')
} 

if (exp < 10){
print('batch1')
} else {
print('batch2')
}



exp = 8

if (exp < 5){
  print('batch1')
} else if (exp > 10){
  print('batch3')
} else {
  print('batch2')
}



x = 73

if(x >= 10 & x <= 30) {
  print('in the range')
} else {
  print('outside the range')
}



readline(prompt = 'Type any number: ')

as.numeric(readline(prompt = 'Type any number: '))

# take input from user & print if the number is even or odd
x = as.numeric(readline(prompt = 'Enter any number : '))
x

if(x %% 2 == 0){
  print('Even Number')
}else{
  print('Odd Number')
}


x = 1:10
ifelse(x %% 2 == 0, "even", "odd")
x

# switch statement --------------------------------------------------------

x <- switch(2, "red","green","blue")
x

x <- switch(-1,"red","green","blue")
x

x <- switch(7,"red","green","blue")
x


switch("color", "color" = "red", 
       "shape" = "square", "length" = 5)


switch("shape", "color" = "red", 
       "shape" = "square", "length" = 5)

switch("color", "color" = "blue", 
       "color" = "green", "length" = 5, 
       'color' = 'black')



x <- switch(3,
            'first',
            'second',
            'third',
            'forth')
print(x)


age <- "major"
age <- 'minor'

switch(age,
       'major' = 35,
       'minor' = 12)

#example
# age <- "major" # try changing age value to 'minor'

age <- 'minor'

switch(age,
       'major' = print("age > 18"),
       'minor' = print('age < 18'))
age

price = 'low'

switch(price,
       'low' = 'A',
       'medium' = 'B',
       'high' = 'c')


price = 'medium'

if (price == 'low'){
  'A'
} else if (price == 'medium'){
  'B'
} else {
  'C'
}

# elegant way

price = 'medium'

switch(price,
       'low' = 'A',
       'medium' = 'B',
       'high' = 'c')


# Print statement ---------------------------------------------------------

print('My test score is ', 98) #Error

cat("My test score:", 98)

sprintf("My test score is %d", 98) #digit

sprintf("My test score is %0.2f", 98.4767) #float


paste('text', 1)
paste0('text', 1)
paste('text', 1, sep = ';')
paste('text', 1, sep = ': ')

x = 'nisha'
y = 'arora'
x
y
paste(x, y)
paste0(x, y)
paste(x, y, sep = '__')
y = '15 years'
x
y
paste(x, y, sep = ':')
paste(x, y, sep = ': ')

# for loop ----------------------------------------------------------------

# Example

x = 1:5
x

# Add number 10 to each element

for(element in x){
  print(element + 10)
  }


for(element in x){
  print('hello')
}

for(element in x){
  cat('element: ', element, '\n')
  
  y = element + 10
  cat('y: ', y, '\n')
  z = 20-y
  cat('z: ', z, '\n')
}


x <-  c(1,2,3,4,5)
x

1^2
2^2
3^2
4**2
5**2


for (element in x) {
  print(element^2)
}

for (element in x){
  print('hi')
}


for(element in x){
  print(element)
  # print(element^2)
}

for(i in x){
  print('hi')
}


for (i in x){
  print(i)
}

for (value in x){
  print(value)
}


# Example: Square of first 10 numbers
# Print square of first 10 numbers

for (i in 1:10) {
  print(i**2)
  # print(i/2)
}


# Print multiplication table of 9
x = 1:10
k=9

for (i in x){
  print(k*i)
}


# Example: Print number of characters for city names given by vector x

x <-  c("delhi","pune","mumbai",
        "bangalore","hyderabad","lucknow","chennai")
x
length(x) # number of elements in x

x[1]
x[2]
nchar('NIsha')


# for very city in x, print number of characters

print(nchar(x[2]))

for (city in x){
  print(nchar(city))
}

# Using a for loop
for (i in c(1,2,3,4,5,6,7)) {
  print(nchar(x[i]))
}


for (i in 1:7) {
  print(nchar(x[i]))
}

# better way
for (i in 1:length(x)) {
  print(nchar(x[i]))
}

# you can name your index whatever you want
# value vector can be any vector 
# its not necessary that we make use of index in the body of the for loop

# Example: pass fail
# If we have marks of multiple students, 
# we need to use a loop to iterate through all the students

marks <- c(45, 67, 98, 32); marks

for (i in marks){
  
  if (i > 40) {
    print('pass')
  } else {
    print('Fail')
  }
  
}

# Alternate way/ elegant way

ifelse(marks > 40, 'Pass', 'Fail')

# To print mean of all columns of mtcars

for (i in 1:ncol(mtcars)){
  print(mean(mtcars[, i]))
}

# To create a vector containing mean of every column of mtcars data set

y  =  NA # initializing a vector

for (i in 1:ncol(mtcars)) {
  
  y[i]  =  mean(mtcars[, i])
  
}
y


for (i in 1:ncol(mtcars)) {
  
  x =  names(mtcars)[i]
  y =  mean(mtcars[, i])
  
  print(c(x, y))
}


# To add a new column 'new' to mtcars data set containing values 
# which are 5 times of their indices

mtcars$new  =  NA # To initiate an empty column

for (i in 1:nrow(mtcars)){
  mtcars$new[i]  =  5*i
}
mtcars

# To print squares of 10 random numbers
set.seed(1)
x = sample(1:100,10); x

for (i in 1:10) {
  print(x[i]**2)
}

for (i in 1:length(x)) {
  print(x[i]**2)
}

for (i in x) {
  # print(i)
  print(i**2)
}


# While Loop --------------------------------------------------------------

# Example: print 'hi' multiple times

# The following loop will not stop unless you interrupt it

i = 0

while (i < 5){
  print('hi')
}

# Press escape key from your keyboard to interrupt the loop

# Example: print 'hi' 5 times

i = 0

while (i < 5){
  print(i)
  print('hi')
  i = i + 1
  
}


# Example

i = 1

while (i < 5) {
  
  print(i)
  i =  i + 1
  
}

# Example

i = 0

while (i <= 10) {
  print("Small")
  i =  i + 1
}


i = 0

while (i <= 10) {
  print(i)
  i =  i + 1
}

# Example
x  =  1:10
i = 0

while (i < length(x)) {
  print(i)
  i = i + 1
}


# Example
ctr = 0

while (ctr < 10) {
  print(ctr)
  
  if (ctr < 5){
    print("small number")
  }else{
    print("large number")
  }
  
  ctr =  ctr + 1 
}


# Example

ctr = 0

while (ctr < 10) {
  print(ctr)
  
  if (ctr < 2) {
    
    print("less than 2")
    
  }else if (ctr <= 5 & ctr >= 2){
    
    print(" between 2 to 5")
    
  }else{
    
    print("greater than 5")
    
  }
  ctr =  ctr + 1 
}


# Example

x = 1:10

while (ctr < 10) {
  
  print(ctr)
  
  if ( ctr < 5) {
    
    print('smaller')
    
  }else {
    
    print('greater')
    
  }
  ctr = ctr + 1
}


# break statement ---------------------------------------------------------

# It forces the flow to exit the loop
num <- 1:10; num

for (values in num) {
  print(values^2)
}


for (values in num){
  if (values == 5){
    break
  }
  print(values^2)
}



for (val in num){
  # if (val == 5){
  #   break
  # }
  print(val)
}


num <- 1:5

for (val in num){
  if (val == 1){
    break
  }
  print(val)
}

# Example
for(i in 1:100) {
  print(i)
  if(i > 3) {
    print('Greater than 3')
    # Stop loop after 3 iterations
    break
  }
}

# next statement ----------------------------------------------------------

# It helps in skipping the current iteration of a loop
num <- 1:5
num

for (values in num){
  if (values == 4){
    next
  }
  print(values^2)
}



for (val in num){
  if (val == 3){
    next
  }
  print(val)
}

# Example

for(i in 1:10) {
  
  if(i <= 5) {
    # Skip the first 5 numbers
    next
  }
  print(i)
}

# Example

x <- c(23, 12, 34, 54/0)
is.finite(x)
is.infinite(x)

x <- c(23, 12, 34, NA)
is.na(x)
sum(is.na(x))
y <- c(NA, 23, 34, NA, 56, NA)
is.na(y)
sum(is.na(y))


marks <- c(67, 39, NA, 56, 97, NA, 27, 85, 93)

# Check if value is NA. If so, go to the next iteration.
# Else print marks

for (val in marks){
  
  if (is.na(val)){
    next
  } else{
    print(val)
  }
}

# repeat loop -------------------------------------------------------------

x <-  1

# This code will keep running
repeat{
  print(x)
  x = x + 1
}


x = 1
while (x > 0) {
  print(x)
  x = x + 1
}

x = 1

repeat {
  print(x)
  x = x + 1
  
  if (x == 10){
    break
  }
  
}

x = 1

while (x > 0) {
  print(x)
  x = x + 1
  if ( x == 10) {
    break
  }
}



# In the while loop, if condition is met, 
# then it enters the loop and execute the code. 
# But in the repeat loop, it repeatedly executes the code 
# inside the block. We need to use beak statement to stop the
# execution

# Functions ---------------------------------------------------------------

# a function to add number 10

add_10 <- function(x){
  x+10
}

# let's call the function
add_10(23)
add_10(x = 78)


#another function

func1 <- function(x){
  y = 50
  x*y
}

func1(2)

# another function
func2 <- function(x){
  y = 50
  z = x*y
  z+100
}

func2(2)


# two outputs
func3 <- function(x){
  y = x+10; z=x-10
  c(y,z)
}

func3(100)


func3 <- function(x){
  y = x+10; z=x-10
  t = c(y,z)
  t
}

func3(100)

func3 <- function(x){
  y = x+10; z=x-10
  t = list(y,z)
  t
}

func3(100)

# Function with multiple input
func4 <- function(num, k){
  num-k
}

func4(5, 4)
func4(num=5, k =4)
func4(k=10, num=2)
func4(10, 2)

# Function with default input
func4 <- function(x, y=3){
  x+y
}

func4(5)

func4 <- function(x=9, y=3){
  x+y
}
func4()



func4(num=5, k =4)
func4(k=10, num=2)
func4(10, 2)




x = 34
x^2
2*x+3

y = 56
2*y+3 

# creating a function
sq = function (x){
  x^2
}

# calling the function
sq(3788)
sq(12)

func1 = function(x){
  # print(x)
  y = 2*x
  # print(y)
  y^3
}

func1(12)

# more than one input
func2 = function(x, y){
  
  z = x - y
  z
}

func2(2)

func2(2, 3)
func2(3, 2)

func2(x = 4, y = 7)
func2(y = 3, x = 14)


func3 = function(x, y = 10){
  z = x - y
  z
}

func3(20)
func3(y = 20)
func3(x = 20, y = 5)
func3(20, 5)



# To define function

myfunc  =  function(x) {
  
  range = max(x) - min(x)
  
  return(range)
  
}

# To call function

myfunc(23:99)
myfunc(1:10)

# Write a function to print multiplication table of any number


mul_tab = function(k, n=1:10){
  cat('Multiplication Table of ', k, 'is: ', '\n\n')
  k*n
}

mul_tab(19)



# Limitation to a function is that it CAN NOT RETURN MORE THAN ONE OBJECT. 
# If you need to return multiple values, 
# you can do so by BINDING THEM into one object.



mysummary <- function(x) {
  
  s1 = min(x)
  s2 = max(x)
  s3 = median(x)
  
  summary1 = list(min = s1, max = s2, median = s3)
  return(summary1)
  
}

mysummary(1:10)
mysummary(1:10)[2]
mysummary(1:10)['max']
mysummary(1:10)$max


mysummary = function(x){
  
  s1 = min(x)
  s2 = max(x)
  s3 = mean(x)
  s4 = sd(x)
  s5 = median(x)
  # summary = list(min = s1,max = s2,mean = s3,sd = s4,median = s5) # Can use c() to create a vector too but list is more useful
  summary = c(min = s1,max = s2,mean = s3,sd = s4,median = s5) # Can use c() to create a vector too but list is more useful
  return(summary)
  # return(s1, s2, s3, s4, s5) # Error
}

mysummary(2:90)
mysummary(2:90)$max # Can't use it in case we've created a vector

# See for vector
mysummary = function(x){
  s1 = min(x)
  s2 = max(x)
  s3 = mean(x)
  s4 = sd(x)
  s5 = median(x)
  summary = c(min = s1,max = s2,mean = s3,sd = s4,median = s5)
  return(summary)
}
mysummary(2:90)
mysummary(2:90)$min # Error $ operator is invalid for atomic vectors



# With two inputs

func1 = function(x, y){
  
  return(x*y)
  
}


func1(25, 5)


mysummary2 = function(x,y){
  x = x*y
  s1 = min(x)
  s2 = max(x)
  s3 = mean(x)
  s4 = sd(x)
  s5 = median(x)
  summary = list(min = s1,max = s2,mean = s3,sd = s4,median = s5)
  return(summary)
}

mysummary2(1:10) # Error, argument "y" is missing, with no default

mysummary2(1:10,2)

mean(seq(2,20, by = 2))
sd(seq(2,20, by = 2))
median(seq(2,20, by = 2))


mysummary2(x = 1:10,y = 2)
mysummary2(y = 2, x = 1:10)

mysummary2(2, 1:10) # order matters, it is taking x as 2 and y as 1:10
# Try changing the function and see



# To set default arguments



func1 = function(x, y){
  
  return(x - y)
  
}


func1(50, 10)
func1(10, 50)
func1(x = 10, y = 50)
func1(y = 10, x = 50)



func1 = function(x = 23, y = 10){
  
  return(x - y)
  
}

func1()




mysummary2 = function(x = 2:30,y = 4){
  x = x*y
  s1 = min(x)
  s2 = max(x)
  s3 = mean(x)
  s4 = sd(x)
  s5 = median(x)
  summary = list(min = s1,max = s2,mean = s3,sd = s4,median = s5)
  return(summary)
}

mysummary2(x = 5:25, y = 2)

mysummary2(1:10,4)
mysummary2(2:30)
mysummary2(y = 4) 
mysummary2(4) # Notice it is taking x = 4 and y = default
mysummary2()
mysummary2(x = 3:10)



# Sequence Generation ---------------------------------------------------

1:25
2*1:4
n <- 5
1:n - 1
(n - 1):1 
6:1
6 + 12

seq(1, 5, by = 2)
seq(1, 6, by = 2)

x =  seq(1.2,5.8);x

x = seq(1,5,by = 0.3); x
x = seq(1,5, 0.3)
# 5 may or may not be included
x

x = seq(5,1,by = -0.3)
x

x = seq(1,5,by = -0.3) # error


x = seq(1,10,length = 21)
x # 21 elements equally placed between 1 to 10
#creates AP {airthmatic progression}
# start and stop are included when length option is used

x = 1:5
y = seq(2,3,length = 5)
y
seq(2,3,length = 7)


# Data structure in R ----------------------------------------------

# In the next session, we will discuss data structures in R

# scalar
# vector 
# list
# matrix
# factor
# data frame
# array

# factor or Categorical data (simple classifications, like gender)
# Ordered or Ordinal data (ordered classifications, like educational level)