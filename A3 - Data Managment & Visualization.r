library(readr)
read.csv("C:/sanju previous files/uconn/Data science/R studio directory/contribution.csv")
#Above is to read the file from the directory

contribution = read.csv("C:/sanju previous files/uconn/Data science/R studio directory/contribution.csv")
#I am naming the dataset as contribution

View(contribution) 
#To view the contribution dataset


#a.

#--Create a frequency table between Gender and Marital Status.
x = table(contribution$Gender,contribution$Marital.Status) 
x
#table function is used to create a summary table of categorical values. I have assigned it to x.

#--What percentage of divorcees (denoted as D) are male?
prop.table(x,2)
# 39.74% of divorcees are male. The proportion can be found out using prop.table(,2) - for col sum

#--What percentage of the total are single (denoted as S) females? 
prop.table(x)
# 17.64% of the total are single females. The proportion can be found out using prop.table().

#--What is the most common marital status of females?
prop.table(x,1)
#In female the most common maritial status is Married. 55.44 % of total females.





#b.
#--Compute the median value of FY04Giving based on Gender and Marital Status. 
#--Which two groups had the highest median giving?
tapply(contribution$FY04Giving,list(contribution$Gender,contribution$Marital.Status),median)
#The median value above we calculated is for FY04Giving which is grouped using Gender and maritial status.
#Widowed men followed women have the highest median value




#c.
#--Cut 'Class Year' into 2 groups with 3 break points -Inf, 1980, Inf. Save it as cyear.
attach(contribution)
#so that I do can directly write the coloumn names
cyear = cut(Class.Year,c(-Inf,1980,Inf))
#class years has been grouped in two from -infinity to infinity with 1980 being the middle value

#--Calculate the average FY03Giving grouping by cyear and Gender. Which group gave the lowest?
aggregate(FY03Giving,list(cyear,Gender),mean)
#FY03Giving is grouped by the bucketed values and gender.
#For each mean for both mean is calculated.
#the mean of FY03Giving is highest for male in the bucket -Infinity to 1980.





#d.
#--Install and explore package dplyr.
# The package has been installed using- install.packages()
library(dplyr) 
#Load dplyr

help(dplyr)
#to find out infomration about dplyr

#Exploring dplyr
y = select(contribution,c(Major,Next.Degree)) 
View(y)
#the above is using the function select from dplyr to select teh specific coloumns I want to see.
#I have selected major and Next degree.


#Exploring dplyr
formula = (Gender=="M" & Marital.Status=="M")|FY04Giving>1000
f1 = filter(FY04Giving,formula) 
View(f1)
#To view if the FYO4Giving is more than 1000 or not. The vector is in the form true/false.


#1.Create a subset with individuals whose Next Degree is either MS or PHD.  Save it as S1.
S1=contribution[contribution$Next.Degree=="MS"|contribution$Next.Degree=="PHD",]
View(S1)
#Subset is created where next degree us MS or PHD


#2.Sort the subset S1 on Gender and Next Degree. Save it as S2.
S2=arrange(S1,Gender,Next.Degree)
View(S2)
#this subset is arranged by gender and Next degree.





#Using the dataset quakes in the datasets library to complete the following 2 tasks
data("quakes")
View(quakes)

#e.
#Split the plotting region into 1 row and 3 columns with grey background and blue color and 
opar = par()
par(bg="grey",mfrow=c(1,3),col="blue")
#The background is grey and one row is divided into 3 parts and the graphs will be in blue colour


#then plot the following graphs: lat and long, depth and mag, stations and mag.
attach(quakes)
plot(lat,long,main = "Lattitude vs Longitude")
#plot with the coloumn latitude and longitude
plot(depth,mag,main = "Depth vs Magnitude")
#plot with the coloumn depth and magnitude
plot(stations,mag,main = "stations vs Magnitude")
#plot with the coloumn stations and magnitude
par(opar)




#f.
#Draw a histogram for mag with density on the y-axis.
help(hist)
hist(mag,main = "Histogram of Magnitude")
#the density which is the frequency is on the y-axis


#Add a vertical line to indicate the mean of mag in red with line width 3. 
abline(v=mean(mag),lwd=3,col="red")  
#The vertical line can be added using abline at the mean of mag with width(lwd) as 3 and col red.
 
#Give the line an appropriate label.
label=paste("Average Magnitude=",mean(mag))
text(4.75,50,label,srt=90)
#The average Magnitude will be calculated and written near the vertical line at the point mentioned
#above in the funtion text. Rotated at 90 degrees.




