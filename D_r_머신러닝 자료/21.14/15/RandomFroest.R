
library(tidyverse)
getwd()
setwd(dir = './data')
list.files()
load(file = 'Bank_DataSet.RDA')

library(randomForest)
set.seed(seed = 1234)
fit1 <- randomForest(formula = PersonalLoan ~ .,
                     data = trainSet, 
                     ntree = 1000, 
                     mtry = 3, 
                     importance = TRUE, 
                     do.trace = 50, 
                     keep.forest = TRUE)

print(x = fit1)
print(x = fit1$err.rate)
print(x = fit1$err.rate[, 1])
tail(x = fit1$err.rate[, 1], n = 1L)
plot(x = fit1)

importance(x = fit1, type = 1)
varImpPlot(x = fit1, type = 1)

treesize(x = fit1, terminal = TRUE) %>% hist()

real <- testSet$PersonalLoan
pred1 <- predict(object = fit1, newdata = testSet, type = 'response')
table(pred1, real)

prob1 <- predict(object = fit1, newdata = testSet, type = 'vote')[, 2]
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


grid <- expand.grid(ntree = c(300, 500, 700, 1000), 
                    mtry = 3:7,
                    error = NA)

n <- nrow(x = grid)
for(i in 1:n) {
  ntree <- grid$ntree[i]
  mtry <- grid$mtry[i]
  disp <- str_glue('현재 {i}번째 행 실행 중! [ntree : {ntree}, mtry : {mtry}]')
  cat(disp, '\n\n')
  
  set.seed(seed = 1234)
  fit <- randomForest(formula = PersonalLoan ~ .,
                      data = trainSet, 
                      ntree = ntree, 
                      mtry = mtry)
  
  grid$error[i] <- tail(x = fit$err.rate[, 1], n = 1L)
}

plot(x = grid$error, type = 'b', pch = 19, col = 'red', 
     main = 'grid search result')

abline(h = min(grid$error), col = 'red', lty = 2)

loc <- which.min(x = grid$error)
print(x = loc)

bestPara <- grid[loc, ]
print(x = bestPara)

set.seed(seed = 1234)
best <- randomForest(formula = PersonalLoan ~ .,
                     data = trainSet, 
                     ntree = bestPara$ntree, 
                     mtry = bestPara$mtry, 
                     importance = TRUE)

print(x = best)
print(x = fit1)

plot(x = best)
importance(x = best, type = 1)
varImpPlot(x = best, type = 1)

boxplot(formula = Income ~ PersonalLoan, data = trainSet)
avg <- trainSet %>% 
  group_by(PersonalLoan) %>% 
  summarise(m = mean(x = Income))

points(formula = m ~ PersonalLoan, 
       data = avg, 
       pch = 19, 
       col = 'red', 
       cex = 1.2)


library(gmodels)
CrossTable(x = trainSet$Education, y = trainSet$PersonalLoan)



pred2 <- predict(object = best, newdata = testSet, type = 'response')
confusionMatrix(data = pred1, reference = real, positive = '1')
confusionMatrix(data = pred2, reference = real, positive = '1')

F1_Score(y_true = real, y_pred = pred1, positive = '1')
F1_Score(y_true = real, y_pred = pred2, positive = '1')

prob2 <- predict(object = best, newdata = testSet, type = 'prob')[, 2]

roc(response = real, predictor = prob1) %>% 
  plot(main = 'ROC Curve', col = 'red', lty = 1)

roc(response = real, predictor = prob0) %>% 
  plot(col = 'blue', lty = 2, add = TRUE)

roc(response = real, predictor = prob2) %>% 
  plot(col = 'purple', lwd = 2, add = TRUE)

auc(response = real, predictor = prob1)
auc(response = real, predictor = prob2)

saveRDS(object = best, file = 'RandomForest.RDS')


# 시험셋으로 추정라벨 뽑은거 
print(x = pred2)
