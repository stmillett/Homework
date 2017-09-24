#Basic Math
#a. log of a positive number
log(10)

#b. What is the default base for the log function? Calculate the log of your previous number with a di???erent base. 
#The defaul base is e
log10(10)

#c. The log of a negative number. (explain the answer) 
# This will return NaN as log is only defined for x>=0. 
log(-10)

#d. The square-root of a positive number.
sqrt(65)

#Random Number Generator
#a. Create a vector of 15 standard normal random variables. Calculate its mean and SD. 
randVector<-rnorm(15)
mean(randVector)
sd(randVector)
#b. Change the mean to 10 and the SD to 2 and recalculate the vector of 15 random normal variables. Calculate its mean and SD. 
randVector<-rnorm(150000, mean = 10, sd = 2)
mean(randVector)
sd(randVector)

#c. Why are the means and SD not exactly the same as the means and SDs speci???ed in the function?
# You aren't going to get the exact mean and SD specified because these arguments are used to randomly select a value
# from a normal distribution curve with the set mean and sd. Because these samples are radomly selected from the distribution
# you aren't guaranteed to get the same mean and SD. Only with increasing the number of samples will you get closer to the
# seed mean and SD.

#3. Vector Operations 
#a. The weights of 6 individuals in kg are 60, 72, 57, 90, 95, 72. 
#b. Their heights (in m) are 1.80, 1.85, 1.72, 1.90, 1.74, 1.91. 
#c. Enter these vectors into R. 
weight <- c(60, 72, 57, 90, 95, 72)
height <- c(1.80, 1.85, 1.72, 1.90, 1.74, 1.91)

#d. Create a scatterplot of weight vs. height. Interpret the scatterplot. 
plot(height,weight)
#e. Calculate the BMI for each individual. (BMI = weight in kg divided by the square of the height in m) 
#This clears out any previous vector bmi and initializes an empty vector
rm(bmi)
bmi <- vector()

#This runs a for loop for all elements in height and calculates the bmi
for(i in 1:length(height)){
  bmi <- c(bmi,weight[i]/(height[i]**2))
}


#f. Calculate the mean for weight. 
mean(weight)

#g. Subtract the mean from each value of weight. 
rm(meanWeightDif)
meanWeightDif <- vector()

#This runs a for loop for all elements in height and calculates the bmi
for(i in 1:length(weight)){
  meanWeightDif <- c(meanWeightDif,(weight[i]-mean(weight)))
}

#h. Sum the result. Now you know why we square the deviations from the mean to calculate a standard deviation!
sum(meanWeightDif)

#4. Your data science pro???le. Enter your data science pro???le into R as a data frame with two columns. 
#Assign it to your ???rst name. The categories are computer programming, math, statistics, machine learning, domain expertise, communication and presentation skills, and data visualization. 
#Your ranking for each category 1-5, with 5 as best. Create a bar graph of your data science pro???le. 
#When you submit your work, please submit your code, including the data entry piece.

Steven <- data.frame(
          category = c("computer programming", "math", "statistics", "machine learning", "domain expertise", "communication and presentation", "data visualization"),
          ranking = c(3,4,5,4,3,3,2))
barplot(Steven$ranking,names.arg = Steven$category)
