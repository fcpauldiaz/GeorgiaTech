---
title: "Homework9"
author: "Pablo"
date: "3/10/2019"
output:
  pdf_document:
    toc: true
    toc_depth: 3
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

# Question 12.1

Describe a situation or problem from your job, everyday life, current events, etc., for which a design of experiments approach would be appropriate.

I work at a telephone company, so here it is a possible application.  There are multiple combinations of plans for the postpaid numbers, each has a data plan, an sms plan and a voice plan. Each of this combinations results in a different price. There are too many combinations to test all of the possible combinations of plans to test on the market, so a design of experiments can help our company to reduce the possibilities by collecting data and make decisions.


# Question 12.2

Find a fractional factorial design for this experiment: what set of features should each of the 16 fictitious houses have? 

```{r}
library(FrF2)
set.seed(42)
# 10 features and 16 ficticious houses
experiment <- FrF2(nruns= 16,nfactors = 10)
experiment

```

The result of this experiment is determine which features should the 16 houses should the real state agent use to accomplish the fractional factorial design. The result is above and 1 means to include the feature and -1 means to not include it. For each house, there are different features to show to the survey takers, this way the combinations are reduced and the real state agent can collect significant data.


# Question 13.1

For each of the following distributions, give an example of data that you would expect to follow this distribution.

## Binomial

For a job hiring process, a technical test is required for all the applicants. For the n applicants, the number of successful test notes might yield a binomial distribution.

## Geometric

I play on a soccer team every Sunday. My team usually wins the loses, so the number of weeks that my team loses before we actually win, might yield a geometric distribution.


## Poisson

The expected number of requests/hits on a popular blog (server) in a day might yield a poisson distribution.

## Expontential

The time between the requests on a popular blog (server) in a day might yield a exponential distribution.

## Weibull

In a extracting natural resources factory, the time the extracting machine works fine before having to stop might yield a weidbull distribution. Since it is a machine it is expected that failure rate will increase over time, so a k > 1 is expected.


# Question 13.2

Use the Arena software (PC users) or Python with SimPy (PC or Mac users) to build a simulation of the system, and then vary the number of ID/boarding-pass checkers and personal-check queues to determine how many are needed to keep average wait times below 15 minutes. [If you’re using SimPy, or if you have access to a non-student version of Arena, you can use 1 = 50 to simulate a busier airport.]


For this problem I used simpy v2. I used FIFO queues for the board checker queues and for the scanning queues, after I designed the experiment I made changes to the number of boarding checkers and the number of scanners to find when the wait time was less than 15 minutes. Here are the results.

Here are the results from the python. I made 5 simulations each one with 50 iterations to find that the best combination is:

4 boarding check assitants
4 scan assistants

to have less than 15 minute wait time. This combination resulted in 3.42 minutes of wait time with 50 iterations. Hiring more assitants might not be necessary because the goal is already accomplished.

## Results 






![results regular airport](results.png)









What else could be done?

Remember what Dr. Sokol said about simulations, these results should be compared with real life data to see if the results are reasonable (out of scope of this homework).

### Busy airport

Now what will happen when $lambda$ = 50 arrivals per minute

After some test a good range to test was from 30-45 checkers/scanners
The best result was:

38 board checkers 
38 scanners
with 1.46 minutes of wait time.





























![results of busy airport](results2.png)
