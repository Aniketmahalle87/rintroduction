

#to output text

"hello world"
"hey anii how are you boii"
install.packages("installr")

name <- "aniket"
name <- 'snehal'
name

age <-25
num <-100
num+150

ab  <- "blah"
paste('blah blah',ab) 

text <- "sweety"
paste("hello ",text) #it is used to combine or concatenate.

help("paste")
var1 <- var2 <- var3 <- "orange"
var1
var2
var3

x <- 10.5
class(x)

x<- 1000L
class(x)
x<-"live"
class(x)

i <- TRUE
class(i)

#logical operators.
3 > 5
52<2
25>1
5==5

#arithmatic operators.

x <- 100
y <- 250

x+y
x-y
x*y
x/y #will get value in decimal
x%%y #modulas

x^y

#built in maths functions.

max(30,20,10)
min(10,202,5)
sqrt(25)
abs(-4.5)

#datastructures 
#homogeneous ds.

fruits <- c("banana","apple","orange","grapes")
class(fruits)

#heteregeneous

mix <- c(8.2,1,"aniiket",5L,F)
class(mix)

x <- c(8,2,3,6)
y <- c(8,5,2,0)

x+y
x*y
(x+y)*2
x*8

#sequence

1:1000
45:40
seq(1,50,4)

n1 <- 1:5
n1
seq(10,1,-2)

#repetition

rep(41,2)
install.packages("installr")
rep(9,3)

rep("mango",2)

#random sample

sample(1:50,8) #it will provide us random number.
sample(1:10,200) #here replace value = false.
sample(1:10,200, replace = TRUE) #when we add this parameter replace it will return repetaing number.
sample(c("aniket","pooja","archana"),20,replace = T)

#indexing/ Accessing vector elements
x <- c(2,0,0,1)
x[1]
x[1,2]
x(c[1,2])
x[-1] #here it will exclude first number
x[-2] #here it will exclude second number
x[-4] #here it will exclude fourth number
x[1] <- 3
x
x[-1] <- 5
x
x[4] <- 7
x
x[c(1,3)]

y <- c(1,9,9,9)
y<9

y[y<9] <- 7
y
y[y>8] <- 2
y

marks <- c(60,50,20,65,98)
marks
marks > 50

marks[marks>50] #it will return actual marks not boolean value.

names <- c("anya","shru","manu","piku")
names

"shru" %"in% names #in this we are checking if the value is present in our vector.


"pradeep" %in% names

#slicing

marks
marks[3:7]
marks[5] <- 9
marks

marks[6] <- 60
marks

marks[8] <- 50
marks

price <- c(399,63,25,8,2,5558)
price[2:7] #this is slicing we are taking slice from that sequence.

price[9] <- 8000
price

price[price > 1000]
price>1000
price[price == 1000]
price 

#select elements from a vector with conditions

price[price>1000]

#to sort.
sort(price) #sorting is again function used for sorting.
sort(price,decreasing = T) #when we want to sort in descending order.

help(sort)

#Basic functions on vectors
prices <- c(100,20,258,63,965,4500,252,5800)
prices
length(prices)
max(prices)
min(prices)
sum(prices)
mean(prices)
median(prices)
mode(prices)
help(mode)

#dataframes

a<- c(41,25,63,85,96)
b<- c("a","b","c","d","e")
data.frame(a,b) #rows
df <- data.frame(a,b)
df

df1<-data.frame(
  Training = c("strength","stamina","power"), 
  cars = c("polo","harrier","indica"), 
  bikes = c("yamaha","duke","pulsar")
)
df1


  df1[,1] #all rows of 1st coloumn
  df1[2,1] #second row of 1st coloumn
  df1[2,]
  df1[,]
  
  df1$Training

df2 <- data.frame(
  height = c(10,20,30),
  weight = c ("55kg","69kg","85kg")
)

df2

food <- data.frame(
  namess = c("Pavbhaji","Chickenbiryani","Kajukatli","Butterchicken","Purnpoli"),
  taste = c("Spicy","Spicy","Sweet","Spicy","Sweet"),
  type = c("Veg","Non-veg","Veg","Non-veg","Veg"),
  prices = c(150,250,690,500,250)
)
food

cars <- data.frame(
  names = c("gtr","BMW320di","spyder","Land crusier"),
  types = c("sports","luxury","sports","SUV"),
  prices = c(250000,652000,369000,2589200)
)

cars

#rows with food type : veg

food[food$type=="Veg",]

food[food$type=="Non-veg",c("namess","prices")]
food[food$taste=="Sweet",c("namess","prices")]

food[food$taste=="Spicy" & food$prices<400,]   

food[food$taste=="Spicy" | food$prices<300,]   

Orange #inbuilt dataset
mtcars #inbuilt dataset

dim(mtcars)
str(mtcars)
summary(mtcars) #with this we will get all the statistics of our table.

food[,]
food[1,4]
USArrests

View(USArrests)
head(USArrests) #this will return us first 6lines
tail(USArrests,8) #if we provide another arugument it will return 8 last lines.
tail(USArrests,14)

data()

ages <- c(10,20,50,80,60,15,25,28)
plot(ages)
salary <- c(100,5220,660,5800,7800,550,2000,3600)
plot(ages,salary)
dia <- data.frame(
  ages = c(1,58,63,9,65,74,12,20),
  salary = c(100,5220,660,5800,7800,550,2000,3600)

)
plot(dia)
