getwd()
Xtrain <- read.csv('X.train.csv')
ytrain <- read.csv('y.train.csv')
Xtest <- read.csv('X.test.csv')
y_curr <- read.csv('y.predicted.csv')

Xtrain[is.na(Xtrain)] <- 0

library(randomForest)

ytrain <- data.frame(ytrain)
X <- data.frame(ytrain, Xtrain)
X$ytrain
rf <- randomForest(label ~ ., data = X, ntree = )

pred <- predict(rf, newdata = Xtest, type = "prob")


data(iris)
set.seed(111)
ind <- sample(2, nrow(iris), replace = TRUE, prob=c(0.8, 0.2))
iris.rf <- randomForest(Species ~ ., data=iris[ind == 1,])
iris.pred <- predict(iris.rf, iris[ind == 2,])
table(observed = iris[ind==2, "Species"], predicted = iris.pred)
## Get prediction for all trees.
predict(iris.rf, iris[ind == 2,], predict.all=TRUE)
## Proximities.
predict(iris.rf, iris[ind == 2,], proximity=TRUE)
## Nodes matrix.
str(attr(predict(iris.rf, iris[ind == 2,], nodes=TRUE), "nodes"))
