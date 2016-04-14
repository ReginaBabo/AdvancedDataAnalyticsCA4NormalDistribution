import math
import pandas as pd
import numpy as np
#from scipy import stats
import scipy.stats

cutOffPoint = 84
mean = 72
stDev = 15.2

def probability(cutOffPoint):
    fraction = 1 / ( (stDev) * (math.sqrt(2*math.pi)) )
    exponential = math.exp( -( (cutOffPoint - mean)**2) / ( 2 * (stDev**2) ) )
    result = fraction * exponential
    return result

print(probability(cutOffPoint))

## upper tail
answer = 0
while cutOffPoint < (mean + 3*stDev):
    result = probability(cutOffPoint)
    answer += result
    cutOffPoint += 1

print(answer)

## reset cut-off point
cutOffPoint = 84
print(1-(scipy.stats.norm(mean, stDev).cdf(cutOffPoint)) )
