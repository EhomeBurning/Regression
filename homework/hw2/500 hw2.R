# The dataset uswages is drawn as a sample from the Current Population Survey in 1988.
library(faraway)
data("uswages")

# 1. Fit a regression model with weekly wages as the response and years of education 
# and experience as predictors. Present the output.
attach(uswages)
first_lm <- lm(wage ~ educ + exper)
summary(first_lm)

# Number Two
first_lm$residuals
max(first_lm$residuals)

# Number Three
max(first_lm$residuals)

# Number Four 
mean(first_lm$residuals)
median(first_lm$residuals)

# Number Five
fitted_value <- wage - first_lm$residuals
cor(first_lm$residuals,fitted_value)
plot(first_lm$residuals,fitted_value)

# Number Six
first_lm

# Number Seven
second_lm <- lm(log(wage) ~ educ + exper)
second_lm




