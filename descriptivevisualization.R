#visualization in R

ages <- c(10,20,50,80,60,15,25,28)
plot(ages)
salary <- c(100,5220,660,5800,7800,550,2000,3600)
plot(ages,salary)
dia <- data.frame(
  ages = c(1,58,63,9,65,74,12,20),
  salary = c(100,5220,660,5800,7800,550,2000,3600)
  
)
plot(dia)

airquality <- datasets::airquality #here we can take dataset and send to dataframes.
head(airquality,10)
tail(airquality,10)
names(airquality)
airquality[,c(1,2)]
airquality[6,c(3,4)]

summary(airquality[,1]) #via index number.
summary(airquality[,"Ozone"]) #via coloumn name.

plot(airquality$Wind) #by using we can plot graph for the column of airquality dataset.
plot(airquality$Temp)
plot(airquality$Temp,airquality$Wind, type = "p")
plot(airquality) 

plot(airquality$Wind,type = "b")

plot(airquality$Wind,
     xlab = "ozone concentration",
     ylab = "no of instances",
     main = "ozone effect on ny city",
     col = 'blue',
     type = "l")

plot(airquality$Temp,airquality$Wind.B)

#barplot.

barplot(airquality$Wind,
        xlab = "ozone concentration",
        ylab = "no of instances",
        main = "ozone effect on ny city",
        col = 'blue',
        horiz = F,
        axes = T
        )

#histogram

hist(airquality$Wind) #here we use hist keyword for histogram

hist(airquality$Temp,
     main = 'solar radiation value in air',
     xlab = 'solar rad.',
     col = 'red',
     border = 'blue'
     )

hist(airquality$Ozone,
     main = 'ozone layer',
     xlab = 'ozone',
     ylab = 'effect',
     col = 'red',
     border = 'black'
     )

airquality <- datasets::airquality
airquality

barplot(airquality$Temp,
        main = "temp layer",
        ylab = 'effect of temp',
        col = 'blue',
        border = 'black',
        horiz = T,
        axes = T
        )

#single box plot

  boxplot(airquality$Wind,
          main = 'boxplot',
          col = 'orange',
          border = 'black',
          horizontal = T
          )
  
  #as box plot is only graph that provide us outlier values.
  boxplot.stats(airquality$Wind)$out #this will provide us outlier values of boxplot.
  
  #here in place of all rows we can check for only 4 coloumns.
  #multiple boxplot.
  
  boxplot(airquality[,1:4],
          main = 'boxplot',
          col = 'pink',
          border = 'black',
          horizontal = T
  )
  

  airquality <- datasets::airquality
  
  boxplot(airquality$Wind,
          main="boxplot",
          col = "grey",
          border = "black",
          horizontal = T
          )
   
  boxplot.stats(airquality$Wind)$out
 airquality$Ozone  

 #multiple box plot.
 
 boxplot(airquality[,1:4],
         main="boxplot",
         col="pink",
         border="black",
         horizontal=TRUE
         )
 
 airmiles <- datasets::airmiles
airmiles 

AirPassengers<- datasets::AirPassengers
AirPassengers

boxplot(AirPassengers[,1:3],
        main="boxplot",
        col="red",
        border="black",
        horizontal=FALSE
        )

airquality

boxplot(airquality[,1:5],
        main="graph",
        col = "green",
        border = "red",
        horizontal = TRUE
        )

boxplot.stats(airquality[,1:5])$out

help(par)
#margin of the grid(mar)(bottom,left,top,right),
#no of rows and coloumns (mfrow)
#whether a border is to be included
#and position of the labels (las : 1 for horizontal, las = 0 for vertical)
#bty - box around the plot (o,n,7,L,C,U)


margin.table(mfrow)
par(mfrow=c(3,3), mar=c(6,6,6,6), las = 0, bty ='7') #with help of this we can create 
#grid and can plot graphs.

plot(airquality$Ozone)
plot(airquality$Ozone , airquality$Solar.R)
plot(airquality$Wind , airquality$Temp)
plot(airquality$Month , airquality$Day)
boxplot(airquality$Ozone)
barplot(airquality$Solar.R)
hist(airquality$Month)
boxplot(airquality[,1:4],
        main="plot",
        col = "black",
        horizontal = TRUE
        )
plot(airquality$Ozone , main = "Ozone")

#considering NA values.

max(airquality$Wind)
min(Solar.R)
min(airquality$Solar.R)
min(airquality$Solar.R,na.rm = TRUE) #where RM stands for remove,
median(airquality$Solar.R)
median(airquality$Solar.R , na.rm = TRUE)

#Google following function  as Varience in R, etc.
  
#Var stands for varience.
var(airquality$Ozone,na.rm = T)

#sd stands for standard deviation.
sd(airquality$Solar.R,na.rm = T)

#for skewness and kurtosis we need to install some pacakges,
skewness(airquality$Ozone, na.rm = T)
kurtosis(airmiles)
kurtosis(airquality$Solar.R, na.rm = T)

#density Plot

plot(density(airquality$Ozone))

e_quakes <- datasets::quakes

quakes2<-e_quakes
quakes2

mean(quakes2$lat)

boxplot(quakes2[,1:4],
     main='histogram',
     col = 'black',
     border = 'red',
     horizontal = T
     )
margin.table(mfrow)
par(mfrow = c(3,3), mar=c(5,6,5,6), las=0, bty = '7')  
boxplot(quakes2)
boxplot(quakes2[,3:4],
        main="graph",
        col = 'black',
        border = 'red',
        horizontal = T
        )
hist(quakes2$depth)
hist(quakes2$lat)
barplot(quakes2,
        main = 'barplot',
        border = 'red',
        height = 3
        )
skewness(quakes2$lat)
kurtosis(quakes2$depth)

plot(density.default(x = airquality$Wind))
plot(density(airquality$Temp))

