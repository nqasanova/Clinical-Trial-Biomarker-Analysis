# Load libraries 
library(tidyverse)

# Load data 
clinical_data <- read_csv("data/clinical_data.csv")

# Check structure 
glimpse(clinical_data)

# Summary statistics 
summary(clinical_data)

# Numeric summary 
clinical_data |>
  summarise(
    mean_age = mean(age),
    sd_age = sd(age),
    mean_biomarker_1 = mean(biomarker_1)
  )

# Treatment comparison
clinical_data |>
  group_by(treatment) |>
  summarise(
    n = n(),
    mean_age = mean(age),
    success_rate = mean(outcome)
  )

# Biomarker distribution
clinical_data |>
  ggplot(aes(x = biomarker_1, fill = treatment)) +
  geom_histogram(alpha = 0.6, position = "identity") +
  labs(
    title = "Biomarker 1 distribution by treatment",
    x = "Biomarker 1",
    y = "Count"
  )

# Age vs outcome 
clinical_data |>
  ggplot(aes(x = age, fill = factor(outcome))) +
  geom_density(alpha = 0.5) +
  labs(
    title = "Age distribution by outcome",
    fill = "Outcome"
  )

ggsave("report/biomarker_plot.png", width = 6, height = 4)