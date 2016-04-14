## Normal Distribution

## The normal distribution is defined by the following probability density function, where ?? is the population mean and ??2 is the variance.
## f(x) =-???1--e-(x-??)2???2??2 ?? 2??

## If a random variable X follows the normal distribution, then we write:
## 2 X ~ N (??,?? )

## In particular, the normal distribution with ?? = 0 and ?? = 1
## is called the standard normal distribution, and is denoted as N(0,1).


## The normal distribution is important because of the Central Limit Theorem,
## which states that the population of all possible samples of size n from a population
## with mean ?? and variance ??2 approaches a normal distribution with mean ?? and ??2???n when n approaches infinity.


## Problem:
## Assume that the test scores of a college entrance exam fits a normal distribution.
## Furthermore, the mean test score is 72, and the standard deviation is 15.2.
## What is the percentage of students scoring 84 or more in the exam?


## Solution:
## We apply the function pnorm of the normal distribution with mean 72 and standard deviation 15.2.
## Since we are looking for the percentage of students scoring higher than 84,
## we are interested in the upper tail of the normal distribution.

dnorm(84, mean = 72, sd = 15.2)
pnorm(84, mean = 72, sd = 15.2, lower.tail = FALSE) 

## can use summary function
## and boxplot function


##Answer:
## The percentage of students scoring 84 or more in the college entrance exam is 21.5%.


