# Pakete laden ----

library(tidyverse)
library(psych)
source("qualtricshelpers.R")

# Daten einlesen ----

filename <- "data/data_numeric.csv"
raw <- load_qualtrics_csv(filename)

# Zeilen entfernen ----

raw %>% 
  filter(Status == 0) %>% 
  filter(Progress == 100) -> raw

# Spalten entfernen ----

raw.short <- raw[,c(-1:-5, -7:-8, -10:-18, -64:-82, -126:-148, -153,-24:-29)]

# Spalten umbenennen ----

generate_codebook(raw.short, filename, "data/codebook.csv")
codebook <- read_codebook("data/codebook_final.csv")
names(raw.short) <- codebook$variable


# Richtige Datentypen zuordnen ----



raw.short$age <- as.numeric(raw.short$age)


raw.short$gender %>% 
  recode(`1`= "weiblich", `2` = "männlich", `3`="andere") %>% 
  as.factor() -> raw.short$gender



raw.short$edu %>% 
  ordered(levels = c(1:8),
          labels = c("noch Schüler*in",
                     "von der Schule abgegangen ohne Schulabschluss
",
                     "Hauptschulabschluss oder gleichwertiger Abschluss
",
                     "Realschulabschluss (mittlere Reife) oder gleichwertiger Abschluss
",
                     "(Fach-)Hochschulreife (Abitur)" , "(Fach-)Hochschulabschluss (z.B. Bachelor, Master, Diplom)", "Promotion
", "andere")) -> raw.short$edu


raw.short$ccs1 %>% 
  ordered(levels = c(1:6),
          labels = c("vegan","vegetarisch",
                   "Ich esse im Durchschnitt weniger als einmal pro Woche Fleisch.",
                     "Ich esse im Durchschnitt einmal pro Woche Fleisch.",
                     "Ich esse im Durchschnitt mehrmals pro Woche Fleisch." , "Ich esse täglich Fleisch.")) -> raw.short$ccs1

raw.short$ccs2 %>% 
  ordered(levels = c(1:3),
          labels = c("Ich habe kein eigenes Auto und auch keinen Zugriff auf ein Auto.","Ich habe kein eigenes Auto, aber regelmäßig Zugriff auf ein Auto, z.B. auf
das Auto eines Familienmitglieds oder ein Carsharing-Auto.",
                     "Ich habe ein eigenes Auto.")) -> raw.short$ccs2

raw.short$ccs3 %>% 
  ordered(levels = c(1:7),
          labels = c("Ich habe im letzten Jahr privat keine Strecke mit dem Auto zurückgelegt.","1 bis 5.000 km","5.001 bis 10.000 km
", "10.001 bis 15.000 km", "15.001 bis 20.000 km", "mehr als 20.000 km
", "weiß nicht")) -> raw.short$ccs3


raw.short$ccs4 %>% 
  ordered(levels = c(1:7),
          labels = c("Ich habe im letzten Jahr beruflich keine Strecke mit dem Auto zurückgelegt.","1 bis 5.000 km","5.001 bis 10.000 km
", "10.001 bis 15.000 km", "15.001 bis 20.000 km", "mehr als 20.000 km
", "weiß nicht")) -> raw.short$ccs4


# Qualitätskontrolle ----

#speederlimit <- median(raw.short$`Duration (in seconds)`) / 3
#raw.short <- filter(raw.short, `Duration (in seconds)` > speederlimit)


raw.short$wissen <- rowSums(raw.short[,c("cckn1", "cckn2", "cckn3", "cckn4", "cckn5", "cckn6")], na.rm = TRUE)

## Feedback JRH: Auf die selbe Weise brauchen Sie für eine ihrer Hypothesen noch eine Variable "Nutzungshäufigkeit soziale Medien".
## Diese können Sie wie raw.short$wissen erzeugen oder als Skala in die Schlüsselliste aufnehmen. 

raw.short$NHSM <- rowSums(raw.short[,c("sm1_i", "sm1_f", "sm1_t", "sm1_x", "sm1_l", "sm1_s")], na.rm = TRUE)
# Skalen berechnen ----


schluesselliste <- list(
  Verhaltensaenderung = c("ccbi1", "ccbi2", "ccbi3", "ccbi4", "ccbi5", "ccbi6"),
  Vertrauen_Wissenschaft = c("ccdi1","ccdi2", "-ccdi3", "ccdi4", "ccdi5", "ccdi6", "ccdi7", "ccdi8", "ccdi9"),
  Sorgen_Klimawandel = c("cctb1", "cctb2", "cctb3", "cctb4", "cctb5", "cctb6"),
  Klimaschutz = c("ccrb1", "ccrb2", "ccrb3", "ccrb4", "ccrb5", "ccrb6", "ccrb7", "ccrb8","ccrb9", "ccrb10", "ccrb11", "ccrb12"),
  Moral= c("ccpn1", "ccpn2", "ccpn3")
)

scores <- scoreItems(schluesselliste, items = raw.short, missing = TRUE, min = 1, max = 6)

data <- bind_cols(raw.short, as_tibble(scores$scores))


# Lösung abspeichern ----

## Feedback JRH: Da das nicht zu ihren Items gehört, habe ich die Zeilen auskommentiert:

data %>% 
  select(-starts_with("sm", ignore.case = F)) %>% 
  select(-starts_with("ccs2", ignore.case = F)) %>%
  select(-starts_with("ccs3", ignore.case = F)) %>%
  select(-starts_with("ccs4", ignore.case = F)) %>%
  select(-starts_with("freq", ignore.case = F)) %>%
  select(-starts_with("like", ignore.case = F)) %>%
  select(-starts_with("cckn", ignore.case = F)) %>%
  select(-starts_with("cctb", ignore.case = F)) %>%
  select(-starts_with("ccrb", ignore.case = F)) %>%
  select(-starts_with("ccpn", ignore.case = F)) %>%
  select(-starts_with("science", ignore.case = F)) %>%
  select(-starts_with("ccdi", ignore.case = F)) -> data

saveRDS(data, "data/dataFromNumeric.rds")

scores$alpha


