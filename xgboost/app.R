#
# Example R program
#

# https://xgboost.readthedocs.io/en/stable/R-package/xgboostPresentation.html

require(xgboost)

data(agaricus.train, package='xgboost')
data(agaricus.test, package='xgboost')
train <- agaricus.train
test <- agaricus.test

str(train)
dim(train$data)
dim(test$data)
class(train$data)[1]
class(train$label)
