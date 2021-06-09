################################################################
#
#  Beta Distribution in R
#
# Ed Boone, 
# YouTube 2019-01-31 (https://www.youtube.com/watch?v=feKUEc62ykc)
################################################################  

mypath <- "../scripts"
source(paste(mypath, "bayes_set_seed.R", sep="/"))  

# Create a sequence of x values
x1 <- seq(0, 1, by = 0.01) 

# Evaluate the beta density, which is returned by dbeta()
# dbeta( xvalues, alpha, beta ) 
args(dbeta)
y1 <- dbeta( x1, 1, 1)

# Plot the beta density----
plot(x1, y1,
     type = "l",
     col = "blue",
     main="Evaluate the beta density",
     xlab="X axis = probability",
     ylab="Y beta 1,1 = Uniform Distribution",
     sub="Using dbeta() function") 



# Plot the beta density beta(2,1)----
y1 <- dbeta( x1, 2, 1)
plot(x1, y1,
     type = "l",
     col = "blue",
     main="Evaluate the beta density",
     xlab="X axis = probability",
     ylab="Y beta 2, 1",
     sub="Points near 1.0 are more likely")  

# Plot the beta density beta(1,2)----
y1 <- dbeta( x1, 1, 2)
plot(x1, y1,
     type = "l",
     col = "blue",
     main="Evaluate the beta density",
     xlab="X axis = probability",
     ylab="Y beta 1, 2",
     sub="Points near 1.0 are less likely")  

# Plot the beta density beta(2,2)----
y1 <- dbeta( x1, 2, 2)
plot(x1, y1,
     type = "l",
     col = "blue",
     main="Evaluate the beta density w/ Quadratic Equation",
     xlab="X axis = probability",
     ylab="Y beta 2, 2",
     sub="Points near 0.5 are more likely")  

# Plot the beta density beta(20,20)
# Note this is a Beta Distribution, not a Normal Distribution
y1 <- dbeta( x1, 20, 20)
plot(x1, y1,
     type = "l",
     col = "blue",
     main="Evaluate the beta density ",
     xlab="Mean = alpha/(alpha+beta)",
     ylab="Y beta 20, 20",
     sub="Maximum = (alpha-1)/(alpha + beta -2)")  

# Mean of the Beta distribution----
# Mean = alpha/(alpha + beta)----
# Maximum = (alpha-1)/(alpha + beta -2)----
# Variance = alpha*beta/(alpha + beta)^2 * (alpha + beta + 1 )) ----


############### CDF ########################
### CDF CUMULATIVE DISTRIBUTION FUNCTION----


# pbeta()----
# Calculates the area to the left of any x value----
# pbeta( xvalue, alpha, beta) Give a probability 
#      to the left of the xvalue 

x1 <- seq(0, 1, by = 0.01) 
y2 <- pbeta( x1, 1, 1)

# Returns the area to the right of 0.2 of a beta distribution of 
# parameters (2, 2)
# This is the probability that you are at or less than 0.2---- 
pbeta( 0.2, 1, 1) # Uniform
y2 <- pbeta( x1, 1, 1)
plot(x1, y2,
     type = "l",
     col = "blue",
     lty = 2,  # Line type 'dashed line'
     main="Cumulative Distribution Function",
     xlab="pbeta = 0.2",
     ylab="Y = beta 1, 1",
     sub="The p of beta at or less than 0.2")  

pbeta( 0.2, 2,2)

pbeta( x1, 2, 2)
y2 <- pbeta( x1, 2, 2)
plot(x1, y2,
     type = "l",
     col = "blue",
     lty = 2,  # Line type 'dashed line'
     main="Cumulative Distribution Function",
     xlab="pbeta = 0.104",
     ylab="Y = beta 2, 2",
     sub="The p of beta at or less than 0.2")  

# The higher I make the parameters, the more "curvey"
y2 <- pbeta( x1, 20, 20)
pbeta(0.2, 20, 20) 

plot(x1, y2,
     type = "l",
     col = "blue",
     lty = 2,  # Line type 'dashed line'
     main="Cumulative Distribution Function",
     xlab="pbeta = 1.3e-05",
     ylab="Y = beta 20, 20",
     sub="The p of beta at or less than 0.2")  

############### Inverse CDF ########################
### INVERSE CDF Cumulative Distribution Function----  

# What x value give me a probability (area) of 0.1 to the left of x.----
# THIS IS NOT A PROBABILITY, IT IS THE X VALUE----
# This is the value that has area (prob) of 0.1 to the left of the X value

# qbeta(probability, alpha, beta)  Gives an x value
qbeta(0.1, 2,2)

# Used to calculate confidence values  0.025, 0.975

# See function R beta to randomly generate a beta distribution
args(rbeta)
# n = sample size = number of random vars back
# rbeta(n, alpha, beta)
rbeta( 10, 2,2)

############################################## 
# d takes a seq of xvalues, gives density
# r takes sample size, gives random variates
# p takes xvalue, gives area/probability to left of xvalue
# q takes area/probability to left of xvalue, gives the xvalue
#     qbeta used for calculating credible intervals  

