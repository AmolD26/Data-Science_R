airquality <- datasets::airquality
#Top 10 row
head(airquality,10)

#Last 10 row
tail(airquality,10)


###Data set slicing

# slice for 1 st column and all rows
airquality[,c(1,2)]

#
df<-airquality[,-6]

# Descriptive stats summary
summary(airquality)
summary(airquality[,1])


##############summary of data################
#"$" is use for only performaning comind on that column
summary(airquality$Temp)
summary(airquality)
summary(airquality$Wind)


################visualization#######################

plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type="p")  #"p"= point
plot(airquality)
#plots and lines
plot(airquality$Wind, type="l")#"l" = Line
plot(airquality$wind, xlab = 'ozone Concentration',
     ylab= 'no of Instances', main = 'ozone level in ',
     col = 'blue')

#histogram

hist(airquality$Temp)
hist(airquality$Solar.R,
     main = 'solar radiation value in air',
     xlab = 'solar rad', col = 'white')
#main = name of chart
#xlab = name of x axis
#col = colour of chart

#Boxplot
boxplot(airquality)

#Histogram bar plot

barplot(airquality$Ozone,main = 'ozone Concenteration in air',
        ylab = 'ozone level',
        col = 'blue', horiz = T,axes = T)
#Labes(las=1 for horizontal, las=0 for vertical)

#margin of gride (mar)
#no of rows and columns(mfrow)
#whether a border is to be included(bty)
#and position of the labels(las = 1 for horizontal, las = 0 for vertical)
#byt- box arount the plot
par(mfrow=c(3,3),mar=c(2,5,2,1), las=0, byt='o')

plot(airquality$Ozone)
plot(airquality$Ozone,airquality$Wind)
plot(airquality$Ozone,type = "l")
plot(airquality$Ozone, type = "l")
plot(airquality$Ozone,type = "l")
barplot(airquality$Ozone,main = 'ozone Concenteration in air',
        xlab = 'ozone level',
        col = 'blue',horiz = TRUE)
hist(airquality$Solar.R)

boxplot(airquality$Solar.R)
boxplot(airquality[0:4],main = 'multiple box plot')
