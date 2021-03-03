library(rpart)
library(tidyverse)
library(dplyr)


url = 'https://bit.ly/universal_bank'
guess_encoding(url)
df = read.csv(url)
str(df)
summary(df)
df %>% head() 

df = df %>% select(-ID, -ZIP.Code) %>% filter(Experience >= 0)
cols <- c(6, 8:12)
df[,cols] <- map_df(.x = df[,c(6, 8:12)], .f = as.factor)
summary(df)
str(df)

df$PersonalLoan %>%  table() %>% prop.table() %>%  round(digits = 4L) * 100

n <- nrow(x = df)
set.seed(seed = 1234)
index <- sample(x = n, size = n*0.7, replace = FALSE)
trainset <- df %>%  slice(index)
testset <- df %>%  slice(-index)

trainset$PersonalLoan %>%  table() %>% prop.table() %>%  round(digits = 4L) * 100
testset$PersonalLoan %>%  table() %>% prop.table() %>%  round(digits = 4L) * 100

ctrl <- rpart.control(minsplit = 20, cp = 0.01, maxdepth = 10)
set.seed(seed = 1234)
fit1 <- rpart(formula = personList( ~.,
                                    data = trainset,
                                    control = ctrl))