
library(tidyverse)
url <- 'https://bit.ly/universal_bank'
guess_encoding(file = url)
df <- read.csv(file = url)
str(object = df)
summary(object = df)
head(x = df, n = 10L)

class(x = 10)
class(x = 10L)

df <- df %>% select(-ID, -ZIP.Code) %>% filter(Experience >= 0)

cols <- c(6, 8:12)
df[, cols] <- map_df(.x = df[, cols], .f = as.factor)
summary(object = df)

df$PersonalLoan %>% table() %>% prop.table() %>% round(digits = 4L) * 100

n <- nrow(x = df)
set.seed(seed = 1234)
index <- sample(x = n, size = n * 0.7, replace = FALSE)
trainSet <- df %>% slice(index)
testSet <- df %>% slice(-index)

trainSet$PersonalLoan %>% table() %>% prop.table() %>% round(digits = 4L) * 100
testSet$PersonalLoan %>% table() %>% prop.table() %>% round(digits = 4L) * 100

getwd()
setwd(dir = './data')
# save.image(file = 'Bank_Dataset.RDA')
# load(file = 'Bank_Dataset.RDA')

save(list = c('df', 'trainSet', 'testSet'), 
     file = 'Bank_Dataset.RDA')
load(file = 'Bank_Dataset.RDA')

library(rpart)
ctrl <- rpart.control(minsplit = 20, cp = 0.01, maxdepth = 10)
set.seed(seed = 1234)
fit1 <- rpart(formula = PersonalLoan ~ .,
              data = trainSet, 
              control = ctrl)
summary(object = fit1)

library(rpart.plot)
rpart.plot(x = fit1,
           type = 0,
           extra = 106,
           fallen.leaves = TRUE)


