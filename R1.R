# Loading libraries
library(tidyverse)

# Loading data
airquality
airquality <- as.tibble(airquality)

airquality$Month <- as.factor(airquality$Month)

summaries <- airquality %>% 
  group_by(Month) %>% 
  summarise(
    count = n(),
    MeanTemp = mean(Temp),
    MeanWind = mean(Wind),
    StdTemp = sd(Temp)
  )

  
summaries %>% 
  ggplot() +
  geom_col(aes(x = Month, y = MeanTemp), fill = "turquoise", width = 0.4)
    