#Meghana Kasula
#Assignment 2 Solutions

#ISwR package

install.packages("ISwR")


#data set Stroke 
library(ISwR)
data(stroke)

#details of the data set stroke
help(stroke)




#1.     Mean, median and 75th percentile values of age
#SOlution
#Mean of age
mean(stroke$age) #This function will find mean of age where $ is used to choose which coloumn to find mean of.
#median of Ages
median(stroke$age) #This function will find median of age where $ is used to choose which coloumn to find mean of
#75th percentile value of age
quantile(stroke$age,probs=0.75) 
#This function will find percentile of age where $ is used to choose which coloumn to find mean of.
# and the probability (probs) is used to specify the required percentile in decimal form





#2.     Conduct a t-test to evaluate the hypothesis for the population age of 71 for age variable.
t.test(stroke$age, mu=71)
#Solution
# Since the P-value -0.02 is less than the significance level 0.05, we cannot accept the null hypothesis.
# The funtion is t.test which has two arguments, first to choose the coloumn and secon to specify the null hypothesis value




#3.     Create a subset data frame called s1 of all patients who are not dead. 
#Solution
s1 = stroke[stroke$dead == "FALSE", ] 
#Above will create a subset where we choose the coloumn using $ and also specifying its value as "FALSE"
# Since we are looking for a subset of people who are NOT dead and it is mentioned in the dataset as "FALSE"
--#       Draw a plot of sex and age for these individuals. What is your takeaway from the visual?
plot(s1$sex,s1$age)
# We asume default values of the plot characteristics like color and pch values. The two coloumns needed are age and sex.
# Takeaways-
#1) Female average age who are not deas is more than the male average age
#2) Very less outliars in Female age while there are comparitivly more in men agge
#3) A highest age in women is more than the highest age in men





#4.     What is the mean age of all patients who have diabetes and are not dead?
#Solution
mean(stroke[stroke$diab=="Yes" & stroke$dead==FALSE,]$age,na.rm = T)
#Mean age of all patients who have diabetes ie diab=="Yes" and are not dead ie dead==FALSE, excluding missing values na.rm=T since 
#missing values exist and they must be handled 



#5.     What is the mean age of all patients who have diabetes and are dead?
#Solution
mean(stroke[stroke$diab=="Yes" & stroke$dead==TRUE,]$age,na.rm = T)
#Mean age of all patients who have diabetes ie diab=="Yes" and are  dead ie dead==TRUE, exclusing missing values na.rm=T since 
#missing values exist and they must be handled 
