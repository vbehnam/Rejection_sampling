# Rejection_sampling

This is a MATLAB implementation of the very useful rejection sampling method. I will apply this algorithm to three different functions, each with their own file.

Rejection sampling is used when sampling from a certain distribution is difficult or time-consuming (call this distribution f(x)). 

Another similar and "enveloping" function that we know how to sample from is chosen (call this g(x)). It is important that g(x) is strictly larger than f(x) for all x.

Then, we draw samples from g(x). For each sample, we check if it is within the boundaries of f(x). If so, keep this sample. If not, discard it. And repeat for the desired number of samples.