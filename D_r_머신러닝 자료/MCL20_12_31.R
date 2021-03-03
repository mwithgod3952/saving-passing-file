library(tidyverse)
library(dplyr)

df = read.csv(file = 'http://bit.ly/used_cars_price')
head(df)
str(df)

# Age : 개월수 > to_범주형형
# KM :주행거리
# FuelType : Dissel, Petrol, CNG
# HP ; 마력
# MetColor : 금속 컬러 > to_범주형
# Automatic : 미션 > to_범주형
# CC : 엔진크기
# Doors : 문의개수
# Weight : 차량의 무게

df = df %>%
  filter(HP <= 120 & Weight <= 1200 & Doors >= 3)

df <- df %>% select(-CC)
table(df$FuelType)

# # +
# # (4) 벡터 내 특정 값 포함 여부 확인 %in%
# x %in% y
# [1] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE


df <- df %>% 
  filter(FuelType %in% c('Diesel', 'Petrol')) %>% 
  mutate(FuelType = factor(x = FuelType),
         Automatic = factor(x = Automatic),
         MetColor = factor(x = MetColor))
str(object = df)
summary(object = df)

# 정규분포 확인하는 법
shapiro.test(x = df$Price)

# ;

n = nrow(x = df)
print(x = n)

set.seed(seed =- 1234)
index <- sample(x = n, size = n * 0.7, replace = FALSE)
print(x = index)

trainSet = df %>% slice(index)
testSet = df %>% slice(-index)

mean(x = trainSet$Price)
mean(x = testSet$Price)

fit <- lm(formula = Price ~ Age, data = trainSet)
summary(fit)

par(mfrow = c(2, 2))
plot(x = fit)
par(mfrow = c(1, 1))

hist(x = fit$residuals)
shapiro.test(x = fit$residuals)

install.packages("car")
library(car)
ncvTest(model = fit)
durbinWatsonTest(model = fit)
