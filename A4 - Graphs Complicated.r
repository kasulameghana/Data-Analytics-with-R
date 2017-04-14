#Meghana Kasula
#Assignment 4


--#Create a vector called x and place values 10 to 1000.
x =c(10:1000, by=1)
#starts from 10 till 1000 with an increment of 1
x 

--#Create a y vector that takes the square root of the log of numbers in x. 
y= sqrt(log(x))
#log of x values and square root of them
y

--#Create a z vector with values 50/x. Plot x, y, and z as shown below.
z= (50/x) 
# 50 divided by x values
z

--#Plot x, y, and z as shown.

par(bg="white", mfrow=c(1,1))  
# to plot both lines together

plot(x, z, ylab = "y and z", col = "red", ylim=c(0, 10), main="Assignment 4",pch=19) 
#plot for x and z values

par(new=TRUE)

plot(x, y, ylab = " ", col = "blue", ylim=c(0, 10), yaxt='n',pch = 19) 
#plot for x and y values and remove the lables and the axis points in this plot                    

text(400,3.3,expression(paste(y,"=",alpha^2 + gamma + sqrt(beta) ))) 
#used expression to paste the expression given in the question
