# 2020 R Bootcamp Part 1 
# Solutions to the coding that was presented in the introduction to Base R

# J.S.Schuur (08.09.2020)

setwd("~/Desktop/Student representation ISTP/rbootcamp/part1/")
library(tidyverse)
library(ggplot2)


# Variables and R as calculator

# assigning variables
a <- 5
b <- 10

# performing a computation and calling the result 
a + b 

## Data structures

# creating vectors
x <- c(1:9) # c(...), combines arguments into vector or list

## Data structures
  
# creating matrices
A <- matrix(x, nrow = 3, ncol = 3)

# assigning row, column and matrix names
rownames(A) <- c("penguin1", "penguin2", "penguin3")
colnames(A) <- c("species", "sex", "year")
matrix_names <- c("set1", "set2")


## Data structures

# array
array1 <- array(c(A,A), dim = c(3,3,2), 
                dimnames = list(rownames(A), 
                colnames(A), matrix_names)) 

## Data structures

# lists
l1 <- list(x, A, "hello", TRUE, FALSE) # elements of different types

# Indexing

x[5] # accessing fifth element of vector

A[2,3] # accessing second row, third column of matrix

A[c(1,2), c(2,3)] # ... 1st and 2nd row of 2nd and 3th column

array1[1,,1] # ... 1st row, all columns, 1st matrix

# Packages and libraries

install.packages(c("palmerpenguins", 
                   "tidyverse", 
                   "ggplot2"))

library(palmerpenguins)

# Base R plotting

y <- c(1,5,2,7,9,8,10,4,1)

plot(x, y)

# Base R plotting

hist(penguins$bill_length_mm, 
     main = "Histogram", 
     xlab = "bill length [mm]")

# Base R plotting
  
plot(penguins$bill_length_mm, penguins$bill_depth_mm, 
     main = "Scatterplot", 
     xlab = "bill length [mm]", ylab = "bill depth [mm]")

# Base R plotting
  
boxplot(bill_length_mm ~ species, penguins,
        main = "Boxplot",
        xlab = "bill length [mm]", ylab = "bill depth [mm]")


# Writing scripts

getwd() # tells you in which working directory you currently operate
setwd() # lets you set your desired working directory


# If-else statements

x

# creating multiple condition statement
if(10 %in% x) {
  print("x is equal to 10")
} else if(20 %in% 10) {
  print("x is equal to 20")
} else if( x < 10 & x >= 0) {
  print("x is a number equal or greater than 0 and smaller than 10")
} else {
  print("the conditions are not med for x")
}

# If-else statements

x

ifelse(x >= 6, "TRUE", "FALSE")


