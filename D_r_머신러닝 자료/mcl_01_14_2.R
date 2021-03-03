library(tidyverse)
url = 'https://bit.ly/median_house_value'
df <- read.csv(url)
str(df)
summary(df)

#' @MedianHouseValue:목표변수
#' 정규분포함의 특지 Median 과 Mean이 거의 같다
#' 
# 최소 최대값 먼저 확인
range(df$MedianHouseValue)

breaks <- seq(0,51000, by = 10000)
hist(x = df$MedianHouseValue, col = 'white', breaks = breaks)


df %>% filter(df$MedianHouseValue < 500000)
head(df)

n <- nrow(df)
set.seed(seed = 1234)
index <- sample(x = n, size = n*0.3, replace = FALSE)
trainSet <- df %>% slice(index)
testSet <- df %>%  slice(-index)

mean(x= trainSet$MedianHouseValue)
mean(x= testSet$MedianHouseValue)

# save(list = c('df', 'trainSet', 'testSet'), 
#      file = 'house_dataset.RDA')

library(rpart)
ctrl <- rpart.control(minsplit = 20, 
                      cp = 0.01, 
                      maxdepth = 10)
set.seed(seed = 1234)
fit1 <- rpart(formula = MedianHouseValue ~ ., 
              data = trainSet, 
              control = ctrl)
printcp(x = fit1)
plotcp(x = fit1)

ctrl <- rpart.control(minsplit = 10, 
                      cp = 0.001, 
                      maxdepth = 30)
set.seed(seed = 1234)
fit1 <- rpart(formula = MedianHouseValue ~ ., 
              data = trainSet, 
              control = ctrl)
printcp(x = fit1)
plotcp(x = fit1)

str(object = fit1) ## ******* 특정 결과값을 뽑아낼 수 있는지 확인하기 위해 필히 필요_Below

# xerror만 벡터로 선택W
fit1$cptable[, 4]

# 최소값의 위치 확인
which.min(x = fit1$cptable[, 4])

# cp만 벡터로 선택
cp <- fit1$cptable[76, 1]W
print(x = cp)

# 가지치기
fit2 <- prune.rpart(tree = fit1, cp = cp)




real <- testSet$MedianHouseValue
pred1 <- predict(object = fit1, newdata = testSet, type = 'vector')
pred2 <- predict(object = fit2, newdata = testSet, type = 'vector')

library(MLmetrics)
MSE(y_pred = pred1, y_true = real)
RMSE(y_pred = pred1, y_true = real)
MAE(y_pred = pred1, y_true = real)
MAPE(y_pred = pred1, y_true = real)

MSE(y_pred = pred2, y_true = real)
RMSE(y_pred = pred2, y_true = real)
MAE(y_pred = pred2, y_true = real)
MAPE(y_pred = pred2, y_true = real)

regMeasure <- function(real, pred) {
  library(MLmetrics)
  result <- data.frame(
    MSE = MSE(y_pred = pred, y_true = real),
    RMSE = RMSE(y_pred = pred, y_true = real),
    MAE = MAE(y_pred = pred, y_true = real),
    MAPE = MAPE(y_pred = pred, y_true = real)
  )
  return(result)
}

regMeasure(real = real, pred = pred1)
regMeasure(real = real, pred = pred2)

#' 선형회귀모형 프로세스
#' 목표변수가 정규분포를 따르는지 확인!
#' 히스토그램 그려서 보는 것도 방법
#' 목표변수와 입력변수 간 상관성 분석 : 피어슨 상관분석
#' 


cor.test(x=)

