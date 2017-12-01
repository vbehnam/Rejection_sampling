# Rejection Sampling

This is a MATLAB implementation of the very useful rejection sampling method. I will apply this algorithm to two different functions, each with their own file.

## A Bit of Math

Rejection sampling is used when sampling from a certain distribution is difficult or time-consuming (call this distribution g(x)). 

Another similar and "enveloping" function that we know how to sample from is chosen (call this f(x)). It is important that f(x) is strictly larger than g(x) for all x.

Then, we draw samples from f(x). For each sample, we check if it is within the boundaries of g(x). If so, keep this sample. If not, discard it. And repeat for the desired number of samples.

For algorithmic efficiency, the enveloping function f(x) should not be too much larger than g(x). Otherwise, there will be too many discarded samples.

## Crazy Sine Function

The first function we are trying to sample from is crazy-sine-function: g(x) = (sin(x))^2)*abs((x^3)+(2*x)-3)

The way I approached this was to draw a perimeter around g(x). We sample both the x and y-coordinates uniformly from within this perimeter. I keep those samples that are also within g(x).

I then plot the histogram and the function g together in the png file crazy-sine-function-result. and we can see that the histogram mimicks the crazy sine function! 

## Exponential Function

We are trying to sample from this function: g(x,y)

This is quite similar to the last problem, except now the function takes in two parameters, rather than one. Therefore, the histogram needs to be replaced with the scatterplot. The scatterplot of the sample vectors are in the png file exponential-function-result.
