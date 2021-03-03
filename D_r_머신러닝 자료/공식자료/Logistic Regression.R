
library(tidyverse)
url <- 'https://bit.ly/university_admit'
guess_encoding(file = url)
# guess_encoding(file = 'https://www.naver.com')
# guess_encoding(file = 'https://finance.naver.com')

df <- read.csv(file = url)

# str() 함수를 실행하는 이유
# 컬럼별 벡터 자료형을 확인하기 위함!
str(object = df)
head(x = df, n = 10L)

# summary() 함수를 실행하는 이유
# 컬럼별 기술 통계량을 빠르게 확인하기 위함!
summary(object = df)

# df$admit <- as.factor(x = df$admit)
# df$rank <- as.factor(x = df$rank)

vars <- c('admit', 'rank')
df[vars] <- map_df(.x = df[vars], .f = as.factor)
summary(object = df)

# prop.table(x = table(df$admit)) * 100

# shift & ctrl & m
df$admit %>% table() %>% prop.table() * 100


boxplot(formula = gre ~ admit, 
        data = df, 
        col = 'white', 
        pch = 19, 
        outcol = 'red')

avg <- df %>% group_by(admit) %>% summarise(m = mean(x = gre))

points(formula = m ~ admit, 
       data = avg, 
       pch = 19, 
       col = 'blue', 
       cex = 1.2)

by(data = df$gre, INDICES = df$admit, FUN = shapiro.test)
wilcox.test(formula = gre ~ admit, data = df)



boxplot(formula = gpa ~ admit, 
        data = df, 
        col = 'white', 
        pch = 19, 
        outcol = 'red')

avg <- df %>% group_by(admit) %>% summarise(m = mean(x = gpa))

points(formula = m ~ admit, 
       data = avg, 
       pch = 19, 
       col = 'blue', 
       cex = 1.2)

by(data = df$gpa, INDICES = df$admit, FUN = shapiro.test)
wilcox.test(formula = gpa ~ admit, data = df)


library(gmodels)
CrossTable(x = df$rank, y = df$admit)
chisq.test(x = df$rank, y = df$admit)

n <- nrow(x = df)
set.seed(seed = 1234)
index <- sample(x = n, size = n * 0.7, replace = FALSE)
trainSet <- df %>% slice(index)
testSet <- df %>% slice(-index)

trainSet$admit %>% table() %>% prop.table() * 100
testSet$admit %>% table() %>% prop.table() * 100

fit1 <- glm(formula = admit ~ ., 
            data = trainSet, 
            family = binomial(link = 'logit'))
summary(object = fit1)

fit1$coefficients %>% exp() %>% round(digits = 4L)

library(reghelper)
beta.z <- beta(model = fit1)
beta.z$coefficients[, 1] %>% round(digit = 4L)


real <- testSet$admit
print(x = real)

prob1 <- predict(object = fit1, newdata = testSet, type = 'response')
print(x = prob1)

pred1 <- ifelse(test = prob1 >= 0.5, yes = 1, no = 0) %>% as.factor()
print(x = pred1)

library(caret)
confusionMatrix(data = pred1, reference = real, positive = '1')

library(MLmetrics)
F1_Score(y_true = real, y_pred = pred1, positive = '1')

library(pROC)
roc(response = real, predictor = prob1) %>% 
  plot(main = 'ROC Curve', col = 'red', lty = 1)

roc(response = real, predictor = as.numeric(x = pred1)) %>% 
  plot(col = 'blue', lty = 2, lwd = 2, add = TRUE)

auc(response = real, predictor = prob1)


rate <- trainSet$admit %>% table() %>% prop.table()
rate[2]

pred2 <- ifelse(test = prob1 >= rate[2], yes = 1, no = 0) %>% as.factor()
print(x = pred2)

confusionMatrix(data = pred1, reference = real, positive = '1')
confusionMatrix(data = pred2, reference = real, positive = '1')

F1_Score(y_true = real, y_pred = pred1, positive = '1')
F1_Score(y_true = real, y_pred = pred2, positive = '1')
