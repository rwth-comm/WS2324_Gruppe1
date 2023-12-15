install.packages("jmv")

# Pakete installieren
remotes::install_github("statisticsforsocialscience/hcictools")
install.packages("esquisse")

# Pakete aktivieren
library(hcictools)
library(tidyverse)
rwthcolor <- hcictools::rwth.colorpalette()
df <- dataforsocialscience::robo_care
df %>% 
  ggplot() +
  aes(x = age) +
  geom_histogram(bins = 30L, fill = rwthcolor$petrol) +
  geom_vline(xintercept = mean(df$age)) +
  annotate("text", x=mean(df$age)+2, y=40, label=paste0("M = ", round(mean(df$age), digits = 2)), angle=90) +
  labs(x = "Alter in Jahren", 
       y = "Anzahl", 
       title = "Studentische Stichprobe", 
       subtitle = paste0("Altersverteilung im Histogramm (n=",nrow(df), ")"),
       caption = "Anzahl der Bins: 30") +
  theme_minimal()
ggsave("histogram.png",units = "mm", width = 297, height = 210)