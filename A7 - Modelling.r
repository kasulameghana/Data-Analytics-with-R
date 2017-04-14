# 1

# uniform distribution of 1000 numbers between 5 and 9, hours to complete task 1 
task1 = runif(n=1000,min = 5,max = 9)

# exponential distribution of 1000 number with the rate 0.1 , hours to complete task 2
task2 = rexp(n = 1000,rate = 0.1)

# poisson distribution of 1000 numbers with lambda 4 ,hours to complete task3
task3 = rpois(n = 1000,lambda = 4)

# uniform distribution of 1000 numbers between 3 and 10, hours to complete task 4 
task4 = runif(n=1000,min = 3, max = 10)

# a. What are the mean and median times to complete all the tasks?

# Totoal time taken for four tasks

totaltime = (ifelse(task1>task2,ifelse(task1>task3,task1,task3),ifelse(task2>task3,task2,task3))) + task4

# Mean & Median

mean(totaltime)
median(totaltime)

# b. What is the probability that all the tasks are completed in 15 hours?

T1 = totaltime[totaltime<=15]
T1

# total tasks completed in 15 hours instances by dividing th subset length 
# with total numbers of times
probility = length(T1)/1000
probility

# c. Create a plot of the density of the total completion time. 
plot(density(totaltime))


# 2

# Test the hypothesis that the mean number of pregnancies is 3.7

# Reading the csv file of Diabetes data and taking one coloumn in one col
diabetes <- read.csv("C:/sanju previous files/uconn/Data science/R studio directory/car insurance.csv", na = "NA")

Pregnancies = diabetes$Pregnancies

# Hypothesis Testing
# mean of pregnancies is 3.7

# calculating the test statistic as mean of pregnancies vector
tstat = mean(Pregnancies)

# Assuming this follows a poisson distribution
# sample of a poisson distribution
function1= function()
{
  x=rpois(n=length(Pregnancies),lambda = 3.7)
  return(mean(x))
}

# create a sampling distribution by replicating the above function zillion times
sdist=replicate(n=10000,f2())

# plotting the density graph of sampling distribution and then plotting the test statistic 
# value in it
plot(density(sdist))
abline(v=tstat,col="red")

# calculating the p value by taking the number of sample means which are to the extremes of 
# test statistics towards right side and left side in sampling distribution plot
gap=abs(mean(sdist)-tstat)
s1=sdist[sdist<mean(sdist)-gap | sdist>mean(sdist)+gap]
pvalue=length(s1)/length(sdist)