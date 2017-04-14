#Meghana Kasula
#Assignment 6

# 1. Create a function that takes in a numeric vector.
# The output should be a vector with running mean values. 
# The ith element of the output vector should be the mean of the values in the input vector
# from 1 to i. (worth 20 points)

#FUNCTION

runningmean = function(x)       #function initiation
{
  A = c()                       #The vector that we want
  total = 0                     #Initial sum is 0
  i=1                           #Initial i value is 0
  for ( n in 1 : length(x))     #To calculate sum from i till end of lenght
  {
    total = total + x[n]        #Sum calculated till lenght of the x
    average = total/n           #Average calculated
    A = append(A,average)       #Result vector
    
  }
  return(A)                     #Result
}

#FUNCTION TESTING

runningmean(c(1,1,1))           #Expected answer is (1,1,1) and observed answer is same       
runningmean(c(1,2,3,4))         #Expected answer is (1,1.5,2,2.5) and observed answer is same





# 2. Create a function that takes in a numeric vector. 
# The objective is to forecast using exponential smoothing.
# The output of the function should be a dataframe with two columns - actual and predicted
# values. Set a default value of 0.8 for alpha.

#FUNCTION

forecast = function(x)      #This is the function Initiatino
{
  actual = c()              #The actual or the previous value
  pforc = c()               #to be forecasted value
  a = 0.8                   #Alpha value given in the 
  i=1
    for(v in x)               #for function forcasting next values
  {
    if(i==1)                #If i is equal to 1 following code executes
    {
      actual[i] = v         
      pforc[i]  = v
      i = i + 1
    }
    else                    #If not euqal, the formula given is applied
    {
      actual[i] = v
      pforc[i] = actual[i-1] + a * (v-pforc[i-1])
      i = i + 1

    }
  }
 
  y = cbind(actual,pforc)   #The result vector y is a combination of actual and forcasted values
  colnames(y) <- c("Actual", "Predicted")
  return (y)
}

#FUNCTION TEXTING

forecast(1:4)  
forecast(2:5)
forecast(1:2)




# 3. There is a package with a function that enables you to check if a number is prime.
# Create a function that takes in two integers (set default values of 1 to both).
# The function should calculate the number of prime numbers between the two values.

#FUNCTION

install.packages("schoolmath")   #Intall the schoolmath 
library(schoolmath)              #load the schoolmath
is.prim(3)                       #test

checkprime = function(x,y)       #Function to list number of prime numbers b/w 2 numbers
{
  a = 0
  for(i in x:y)
  {
    if(is.prim(i) == TRUE)       #If its a prime 1 is added to a which is initally 0.
    {
      a = a + 1
    }
  }
  return(a)
}

#FUNCTION TESTING

checkprime(1,10)
checkprime(1,3)




# 4. Simulate a function to roll a dice. 
# Note that a dice turns up with numbers 1, 2, 3, 4, 5 or 6. 
# The function should do the following: you roll the dice twice, 
# and if both the numbers are the same then return 'You Win' otherwise return 'You Lose' 

#FUNCTION

dicegame = function()                          #Funtion Initiation
{
   roll_1 = sample(1:6, size = 1,replace = T)  #First dice sample at random
   roll_2 = sample(1:6, size = 1,replace = T)  #Second dice sample at random
   if(roll_1 == roll_2)
   {
     dicegame_result = "You win"               #Result if the numbers on both were equal
   }
   else
   {
      dicegame_result= "You Lose"              #Result if the numbers on both were not equal
   }
   return(dicegame_result)
}

#FUNCTION TESTING

dicegame()
dicegame()


  

#5. Create a function called Missing that takes in a data frame as the input and outputs 
# another data frame with column names,
# number of missing values in each column, 
# percentage of missing values in each column, 
# and the number of unique values in each column.

#FUCNTION 

missing = function(x)           #function initiation
{
  Col_Name = colnames(x)        #first coloumn in the output which is col names
  Mis_val  = c()                #Second coloumn in the output which is number of missing values
  Un_val   = c()                #Fourth coloumn in the output which is number of unique values
  Per_Mis_val  = c()            #Third coloumn in the output which is percent of number of missing values
 
   for(i in 1:ncol(x))          # for loop with formula to calculate all
  {
                                #to know the number of missing values by going through every row
     
      Mis_val = c (Mis_val,sum(is.na(x[,i])))  
                                
                                #number missing values by total values in decimal form
     Per_Mis_val = c( Per_Mis_val, Mis_val[i]/nrow(x)) 
     
                                #the number of unique values
     Un_val = c(Un_val, length(unique(x[,i]))) 
   }
                                #Bind all the vectors
  Misdata = t(rbind(Col_Name,Mis_val,Per_Mis_val,Un_val)) 
  colnames(Misdata)<-c("Column Name","# Missing Values","% Missing Values","# Unique Values")
  return (Misdata)
}

#FUNCTION TESTING 

missing(whiteside)
missing(Boston)

