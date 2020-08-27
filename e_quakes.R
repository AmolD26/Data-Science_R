e_quakes<- datasets::quakes

#Summary of quakes
summary(quakes)
#summary of only 1 row
summary(quakes[1,])
#summaey of onlt 1 colume
summary(quakes[,3])

#top 10 rows
head(quakes)

#bottom 10 rows
tail(quakes)

#All rows and 1 and 3 colume
e_quakes[, c(1,3)]    #showing only 500 rows 
e_quakes[2, c(1,2,3,4,5)]

e_quakes[,-3]  #what action is perform

 #displaying only 33 rows

#histogram
hist(quakes$depth, main = 'depth od quakes',
     xlab = 'depth',
     col = 'blue')

#boxplot
boxplot(quakes$depth, main = 'depth of quaks',
        xlab= 'depth',
        col = 'red')
#plot
par(mfrow=c(5,2),mar=c(2,5,2,1), las=0, byt='1')

plot(quakes)
plot(quakes[,1])
plot(quakes$lat, type = 'l')
plot(quakes[,2])
plot(quakes$long, type = 'l')
plot(quakes[,3])
plot(quakes$depth, type = 'l')
plot(quakes[,4])
plot(quakes$mag, type = 'l')
plot(quakes[,5])
plot(quakes$stations, type = 'l')


#plot and line
plot(quakes, type = 'l') #formal argument "type" matched by multiple actual arguments

plot(quakes$lat, type = 'l')



