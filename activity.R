library(broom)
library(tidyverse)

my_model <- lm(y ~ x, data = my_data)
summary(my_model)

my_model_aug <- augment(my_model)
glimpse(my_model_aug)

my_model_aug %>%
  ggplot(., aes(x=x, y = .fitted) +
           geom_line + 
           geom_point(aes(x=x, y = y)