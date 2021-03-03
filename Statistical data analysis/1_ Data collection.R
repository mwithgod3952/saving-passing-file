# Data는 관찰, 실험, 기록에 의해 일정한 주제로 정리되며, 통합된 사식즉,Fact의 집합

# Step 1
# ********************* : [데이터 수집 원천 및 표본 설정]
# ********************* : [측청척도]

# Step 2
# Selection samples
# *****************: 1) Judgment sample
# *****************: 2) Conveniemce sample
# *****************: 3) Random Sample
# ***********************************: 3 - 1 : 모집단 내의 모든 구성요소를 포함하고 있는 목록_ ** 표본프레임 ** 으로부터 선정된 표본본
# ***********************************: 3 - 2 : 대표선(Representativeness)을 보장하는 유일한 방법

# Step 3
# 측정(Measurement)와 척도(Scale)
# ******************************* : 목적에 따라 Scale을 개발하여 '측정'에 활용.

# ;

# 기술통계_ Descriptive statistics
# *********************************: 범주형변수_ Categorical Variable 
# *********************************_____ : Factoor in R  

library(MASS)
str(survey)
levels(survey$Smoke)

Frequency_Table = table(survey$Smoke); Frequency_Table 

class(Frequency_Table) # "Table"_ Table object have the same structure as array and matrix.
Frequency_Table[2]
Frequency_Table == max(Frequency_Table) # Mode : 최빈값
# **
Frequency_Table[Frequency_Table == max(Frequency_Table)]
names(Frequency_Table[Frequency_Table == max(Frequency_Table)])

which.max(Frequency_Table)
Frequency_Table[which.max(Frequency_Table)]
names(Frequency_Table[which.max(Frequency_Table)])

# Converting the frequency into a ratio
Frequency_Table_prop = prop.table(Frequency_Table)
Frequency_Table_prop[2] * 100
Frequency_Table_prop["Never"] * 100

# == >> Using as a logical operator
head(survey)
library(dplyr)
# dplyr::filter(survey, Pulse > 100)
length(survey$Smoke)
survey$Smoke == "Never"
survey1 = survey %>% group_by(Smoke) %>% summarise(n=n())
which(survey1 == "Never")
sum(is.na(survey$Smoke)) # ***
survey1$n[2]/(length(survey$Smoke) - sum(is.na(survey$Smoke)))

# Simplify the above process
mean(survey$Smoke == "Never", na.rm=TRUE)

head(anorexia)
# Logical operation
anorexia$Postwt > anorexia$Prewt
mean(anorexia$Postwt > anorexia$Prewt, na.rm=TRUE)

head(mammals)
# About 3% >> very large or very small proportion of the brain
mean(abs(mammals$brain - mean(mammals$brain)) > 2*sd(mammals$brain))

# diff function
head(SP500)
mean(diff(SP500) > 0)

# instead of diff
f1 = data.frame(x = 1:length(SP500))
f1$x1 <- NA
head(f1)
x = 0
for(x in 1:length(SP500)){f1$x1[x] <- ifelse(SP500[x] < SP500[x + 1], 1, 0)};head(f1)
fi.sum = filter(f1, x1 > 0)
sum(fi.sum$x1)/length(SP500)

# Table or Xtab
library(vcd)
str(Arthritis)
levels(Arthritis$Treatment)
levels(Arthritis$Improved)

table(Arthritis$Improved, Arthritis$Treatment, dnn=c("Improved", "Treatment"))
(crosstab = xtabs(~ Improved + Treatment, data = Arthritis))

margin.table(crosstab, margin = 1) # The information of rows
margin.table(crosstab, margin = 2) # The information of columns

prop.table(crosstab, margin = 1) # The information of row's proportion
prop.table(crosstab, margin = 2) # The information of column's proportion
prop.table(crosstab) # The information of each cell's proportion

addmargins(crosstab, margin = 1)
addmargins(crosstab, margin = 2)
addmargins(crosstab)

addmargins(prop.table(crosstab, margin = 1), margin = 1) # addmargins(prop.table(crosstab, margin = 1), 1)
addmargins(prop.table(crosstab, margin = 1), margin = 2) # addmargins(prop.table(crosstab, margin = 1), 2)

library(gmodels)
? CrossTable
CrossTable(Arthritis$Improved, Arthritis$Treatment, prop.chisq = FALSE, dnn=c("Improved", "Treatment"))

(table(Arthritis$Improved, Arthritis$Sex, Arthritis$Treatment))
(xtabs(~ Improved + Sex + Treatment, data =Arthritis))









