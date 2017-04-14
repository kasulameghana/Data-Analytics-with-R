#Meghana Kasula
#Assignment 5

library(MASS)
View(survey)
attach(survey)

--#Use the data set survey in the MASS package. 
--#Create a plot of Age and Pulse. 
plot(Age,Pulse,pch=19,main = "Age vs Pulse",cex = 0.6) 
#Plot of all observations and variable age and pulse

S1=survey[Sex=="Female" & Age >21,]
#This is a subset of all females over 21
View(S1)

--#Color females over 21 years with red. 
points(s1$Age,s1$Pulse,col="red",pch=19,cex = 1.3) 
#This is to mark all the points in subset S1 in red

S2=survey[Sex=="Male" & Exer=="Freq",]  
#This is a subset of all males who excercise
View(S2)

--#Color males who exercise frequently with blue.
points(s2$Age,s2$Pulse,col="blue",pch=19,cex = 1.3)
#This is to mark all the points in subset S2 in blue