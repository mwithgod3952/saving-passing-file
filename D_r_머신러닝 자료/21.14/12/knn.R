
library(tidyverse)
getwd()
setwd(dir = './data')
list.files()
cust <- readRDS(file = 'Dataset for Cust.RDS')
str(object = cust)

# library(writexl)
# write_xlsx(x = cust, path = 'Dataset for Cust.xlsx')

dist(x = cust)

scaled <- scale(x = cust)
summary(object = scaled)
apply(X = scaled, MARGIN = 2, FUN = sd)

dist(x = scaled)


set.seed(seed = 1234)
heights <- rnorm(n = 10000, mean = 172.4, sd = 5.7)
scaled1 <- scale(x = heights)
mean(x = scaled1)
sd(x = scaled1)
range(scaled1)

Min <- min(heights)
Max <- max(heights)
scaled2 <- scale(x = heights, center = Min, scale = Max - Min)
mean(x = scaled2)
sd(x = scaled2)
range(scaled2)




url <- 'https://bit.ly/white_wine_quality'
guess_encoding(file = url)
df <- read.csv(file = url, sep = ';')
str(object = df)
summary(object = df)

tbl <- table(df$quality)
print(x = tbl)
tbl %>% prop.table() %>% cumsum() %>% round(digits = 4L) * 100

bp <- barplot(height = tbl, 
              ylim = c(0, 2400),
              xlab = 'Quality', 
              main = 'White Wine')
# print(x = bp)
text(x = bp, 
     y = tbl, 
     labels = tbl, 
     pos = 3, 
     col = 'blue', 
     font = 2)

df$grade <- ifelse(test = df$quality >= 7, yes = 'best', no = 'good')
df$grade <- factor(x = df$grade, levels = c('good', 'best'))
print(x = df$grade)
df$quality <- NULL

n <- nrow(x = df)
set.seed(seed = 1234)
index <- sample(x = n, size = n * 0.7, replace = FALSE)
trainSet <- df %>% slice(index)
testSet <- df %>% slice(-index)

trainSet$grade %>% table() %>% prop.table() %>% round(digits = 4L) * 100
testSet$grade %>% table() %>% prop.table() %>% round(digits = 4L) * 100

k <- trainSet %>% nrow() %>% sqrt() %>% ceiling()
print(x = k)

library(kknn)
fit1 <- kknn(formula = grade ~ .,
             train = trainSet, 
             test = testSet, 
             k = k, 
             kernel = 'rectangular')
str(object = fit1)

head(x = fit1$CL, n = 10L)

real <- testSet$grade
pred1 <- fit1$fitted.values
table(pred1, real)

library(caret)
confusionMatrix(data = pred1, reference = real, positive = 'best')

library(MLmetrics)
F1_Score(y_true = real, y_pred = pred1, positive = 'best')

prob1 <- fit1$prob[, 2]

library(pROC)
roc(response = real, predictor = prob1) %>% 
  plot(main = 'ROC curve', col = 'red', lty = 1)

auc(response = real, predictor = prob1)

library(DMwR)
set.seed(seed = 1234)
trainBal <- SMOTE(form = grade ~ .,
                  data = trainSet, 
                  perc.over = 200, 
                  k = 5, 
                  perc.under = 150)

trainBal$grade %>% table() %>% prop.table() %>% round(digits = 4L) * 100


fit2 <- kknn(formula = grade ~ ., 
             train = trainBal, 
             test = testSet, 
             k = k, 
             kernel = 'rectangular')

pred2 <- fit2$fitted.values
table(pred1, real)
table(pred2, real)

confusionMatrix(data = pred2, reference = real, positive = 'best')
confusionMatrix(data = pred1, reference = real, positive = 'best')

F1_Score(y_true = real, y_pred = pred1, positive = 'best')
F1_Score(y_true = real, y_pred = pred2, positive = 'best')

prob2 <- fit2$prob[, 2]
roc(response = real, predictor = prob2) %>% 
  plot(col = 'blue', lty = 1, add = TRUE)
auc(response = real, predictor = prob2)
auc(response = real, predictor = prob1)


fit3 <- kknn(formula = grade ~ ., 
             train = trainBal, 
             test = testSet, 
             k = k, 
             kernel = 'triangular')

pred3 <- fit3$fitted.values
table(pred3, real)
table(pred2, real)

confusionMatrix(data = pred3, reference = real, positive = 'best')
confusionMatrix(data = pred2, reference = real, positive = 'best')

F1_Score(y_true = real, y_pred = pred2, positive = 'best')
F1_Score(y_true = real, y_pred = pred3, positive = 'best')

prob3 <- fit3$prob[, 2]
roc(response = real, predictor = prob3) %>% 
  plot(col = 'purple', lty = 2, lwd = 2, add = TRUE)
auc(response = real, predictor = prob3)
auc(response = real, predictor = prob2)

