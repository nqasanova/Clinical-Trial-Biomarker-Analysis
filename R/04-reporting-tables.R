# Load libraries 
library(tidyverse)

# Load data 
clinical_data <- read_csv("data/clinical_data.csv")

# Summary table by treatment 
summary_table <- clinical_data |>
  group_by(treatment) |>
  summarise(
    n = n(),
    mean_age = round(mean(age), 1),
    sd_age = round(sd(age), 1),
    success_rate = round(mean(outcome), 2),
    mean_biomarker = round(mean(biomarker_1), 2)
  )

summary_table

write_csv(summary_table, "report/summary_table.csv")

clinical_data |>
  ggplot(aes(x = treatment, y = biomarker_1, fill = treatment)) +
  geom_boxplot() +
  labs(
    title = "Biomarker distribution by treatment",
    x = "Treatment group",
    y = "Biomarker 1"
  ) +
  theme_minimal()

ggsave("report/biomarker_boxplot.png", width = 6, height = 4)
