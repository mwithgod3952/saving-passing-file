
library(tidyverse)
library(dplyr)
list.files()
cust <- readRDS(file = 'Dataset for Cust.RDS')
str(cust)

dist(x = cust)
# 데이터 표준화
scaled <- scale(x = cust)
scaled %>% head()
summary(scaled)
# Mean   : 0.0000 

# 그리고 표준편차위해
apply(scaled, MARGIN = 2, FUN = sd)
dist(scaled)

# -----------------------------------------------------------------------------

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

# ---------------------------------------------------------------------------
install.packages("readr")
library(dplyr)
url = 'https://bit.ly/white_wine_quality'
guess_encoding(url)
df <- read.csv(url , sep = ';')
str(df)

tbl <- table(df$quality)
print(tbl)
tbl %>% prop.table() %>% cumsum() %>% round(digits = 4L) * 100

bp <- barplot(height = tbl,
              ylim = c(0,2400),
              xlab = 'Quality',
              main = 'White Wine')
text(x = bp,
     y = tbl,
     lables = tbl,
     pos = 3,
     col = 'blue',
     font = 2)                            

df$grade <- ifelse(test = df$quality >= 7, yes = 'best', no ='good')

n <- nrow(x = df)
set.seed(seed = 1234)
index <- sample(x = n, size = n *0.7, replace = FALSE)
trainset <- df %>%  slice(index)
testset <- df %>%  slice(-index)

install.packages(caret)
library(caret)
confusionMatrix(data = pred1, reference = real, positive = 'best')







