#IF P IS LOW T MUST GO!!!!!

#

iris
#mean of sepal lengeth
mean(iris$Sepal.Length)

#median of sepal length
median(iris$Sepal.Length)

#max of sepal length
max(iris$Sepal.Length)

#min
range(iris$Sepal.Length)

#variance
var(iris$Sepal.Length)

#standard deviation
sd(iris$Sepal.Length)

# kurtosis
library(moments) 
kurtosis(iris$Sepal.Length)

#skewness --*need library (moments)*
skewness(iris$Sepal.Length)
#summary
summary(iris$Sepal.Length)



#
hist(iris$Sepal.Length, col = "blue")
boxplot(iris$Sepal.Length)
boxplot(iris$Sepal.Length, horizontal = TRUE)
boxplot.stats(iris$Sepal.Length)
boxplot(iris[1:4])



#LINEAR MODEL
aptData <- read.csv(file="winnipeg_apt (1).csv", header = TRUE, sep = ",")
aptData 


# CREATE MODEL
aptData <- lm(price ~sqft, data = aptData )
aptData 
summary(aptData )

#T TEST
bodyDims <- read.csv(file="bdims (2).csv", header = TRUE, sep = ",")
bodyDims

# CREATE SUBSET FOR MATE AND FEMALE *SEX*

maleDims <- subset(bodyDims, sex == 1)
femaleDims<- subset(bodyDims, sex == 0)


#
t.test(maleDims$hgt, femaleDims$hgt, alternative = "two.sided", paired = FALSE)


#ANOVA DIET DATA
diet = read.csv(file="diet.csv", header = TRUE, sep = ",")
head(diet)
diet$weight.loss <- diet$pre.weight - diet$weight6weeks
diet$weight.loss

#VISIALIZE
boxplot(diet$weight.loss ~ diet$Diet,data=diet,col="light gray", ylab = "Weight loss (kg)", xlab = "Diet type")
abline(h=0,col="blue")
#CONVERT TO FACTOR
diet$Diet <- as.factor(diet$Diet)

#CONDUCT ANOVA TEST
anova(lm(diet$weight.loss ~ diet$Diet, diet))

#CONDUCT ANOVA TEXT WITH AOV FUNCTION
table <- aov(diet$weight.loss ~ diet$Diet,data=diet) 
summary(table)






