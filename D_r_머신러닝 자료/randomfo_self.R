library(tidyverse)
library(randomForest)
getwd()

list.files()
load(file = 'Bank_DataSet.RDA')

file <= randomForest(formula = P)

set.seed(seed = 1234)
fit1 <- randomForest(formula = PersonalLoan ~.,
                     data = trainSet,
                     ntree = 1000,
                     mtry = 3,
                     importance = TRUE,
                     do.trace = 50,
                     keep.forest = TRUE)
print(fit1)
print(fit1$err.rate)
print(fit1$err.rate[,1])
tail(fit1$err.rate[,1], n=1)

importance(x = fit1, type = 1)
# MeanDecreaseAccuracy : 정확도의 평균 감소량

# Age                          26.030067
# Experience                   26.173350
# Income                      170.048758
# Family                      115.018622
# CCAvg                        52.567764
# Education                   164.738615
# Mortgage                     14.825850
# SecuritiesAccount             4.502087
# CDAccount                    28.128010
# Online                        4.204005
# CreditCard                   14.703139

#' @MeanDecreaseAccuracy에_대하여 : 
#' 일반적으로 random_sampling을 통해  
windows()
varImpPlot(x = fit1, type = 1)

real <- testSet$PersonalLoan
pred1 <- predict(fit1, newdata = testSet, type = 'response')
table(pred1, real)

prob1 <- predict(fit1, newdata = testSet, type = 'vote')[,2]
head(x = prob1)

library(caret)
confusionMatrix(data = pred1, reference = real, positive = '1')
library(MLmetrics)
F1_Score(y_true = real, y_pred = pred1, positive = '1')

library(pROC)
roc(response = real, predictor = prob1) %>%
  plot(main = 'ROC Curve', col = 'red', lty = 1)

auc(response = real, predictor = prob1)

list.files()
fitDT <- readRDS(file = 'DecisionTree.RDS')
pred0 <- predict(object = fitDT, newdata = testSet, type = 'class')
confusionMatrix(data = pred1, reference = real, positive = '1')
confusionMatrix(data = pred0, reference = real, positive = '1')
F1_Score(y_true = real, y_pred = pred1, positive = '1')
F1_Score(y_true = real, y_pred = pred0, positive = '1')
prob0 <- predict(object = fitDT, newdata = testSet, type = 'prob')[, 2]

roc(response = real, predictor = prob0) %>%
  plot(col = 'blue', lty = 2, add = TRUE)
auc(response = real, predictor = prob0)

grid <- expand.grid(ntree = c(300,500,700,1000),
                    mtry = c(3,4,5,6,7),
                    error = NA)

n <- nrow(grid)
for(i in 1:n){
  ntree <- grid$ntree[i]
  mtry <- grid$mtry[i]
  disp <- str_glue('guswo {i}행 실행중! [ntree: {ntree}, mtry: {mtry}]')
  cat(disp,'\n\n')
  set.seed(1234)
  fit1 <- randomForest(formula = PersonalLoan ~.,
                       data = trainSet,
                       ntree = ntree,
                       mtry = mtry)
  grid$error[i] <- tail(fit$err.rate[,1], n=1)
}

plot(x = grid$error, type = 'b', pch = 19, col = 'red',
     main = 'grid search result')
abline(h = min(grid$error), col = 'red', lty = 2)

loc <- which.min(x = grid$error)
print(loc)

bestPara <- grid[loc,]

