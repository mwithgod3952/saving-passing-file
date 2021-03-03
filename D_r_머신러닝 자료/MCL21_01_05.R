library(tidyverse)
url <- 'https://bit.ly/university_admit'
guess_encoding(file = url)
# guess_encoding(file = 'https://www.naver.com')
guess_encoding(file = 'https://finance.naver.com')

df <- read.csv(file = url)
str(object = df)
head(x = df, n = 10L)
summary(df)

# df$admit <- as.factor(df$admit)
# df$rank <- as.factor(df$rank)

vers <- c('admit', 'rank')
df[vers] <- map_df(.x = df[vers], .f = as.factor)
summary(object = df)

# ------------------------------------------------------------------------------
# shift + ctr + m >> shortcut key for pipe line
prop.table(x = table(df$admit)) *100
df$admit %>% table() %>% prop.table() * 100

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

install.packages(gmodels)
library(gmodels)
CrossTable(x = df$rank, y = df$admit)
chisq.test(x = df$rank, y = df$admit)

# -----------------------------------------------------

n <- nrow(x = df)
set.seed(seed = 1234)
index <- sample(x = n, size =  n * 0.7, replace = FALSE)

# ------------------------------------------------------

ibrary(MLmetrics)
F1_Score(y_true = real, y_pred = pred1, positive = '1')

library(pROC)
roc(response = real, predictor = prob1) %>% 
  plot(main = 'ROC Curve', col = 'red', lty = 1)

roc(response = real, predictor = as.numeric(x = pred1)) %>% 
  plot(col = 'blue', lty = 2, lwd = 2, add = TRUE)
