#Meghana Kasula
#Assignment 1 Solutions



#1) -- a vector called x with a sequence of numbers from -10 to 10 incrementing by 0.1
#Solution
x=seq(-10,10, by=0.1)
x
# To generate a sequence the syntax is as follows.
# seq(from,to,by=desired increment to 'from' till 'to')
# It is a linear vector with 202 elements which include the 'from' and 'to' numbers.



# -- vector called y which computes the sine
#solution
y=sin(x)
#The sine function has the syntax sin(x) in in r and it is stored in y vector as above. 


# --A plot of x and y. 
#   pch =19,x axix "x value" and y axis -  "sine", 
#   title "Assignment Graph". 
#   Plot the points in color orange.
# Solution
plot(x,y,pch=19,main="Assignment Graph",xlab="x value",ylab="sine",col="orange")
# As instructed in the question the syntax of plot starts with x and y value which is gained from the 
# x and y vectors that I have defined above and pch value ,lables for x and y, main title and 
# the color of the graph axis has been mentioned.
# Apart from this, the y and x limit can be mentioned to make the graph finite but the vector x already has defined 
# limitation and y which is a sine funtion has a limit of -1 to 1.





#2) a.       Repeat x,y 7 times as follows.
#SOlution
rep(c("x","y","z"),7)
# the repetation of characters as mentioned in the statement can be done using rep ("")
# It will repeat char "x","y","z" 7 times in the same order


#2) b.       Repeat x, y 4 times and z twice as follows.
y= c(rep(c("x","y"),4),rep("z",2))
y
# The above will repeat "x","y" in same order 4 times and add char "z" 2 times


