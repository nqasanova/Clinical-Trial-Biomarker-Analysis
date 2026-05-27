# Load libraries ---------------------------
library(tidyverse)

# Simulate clinical dataset ---------------------------
set.seed(123)

n_patients <- 200

clinical_data <- tibble(
  patient_id = 1:n_patients,
  age = rnorm(n_patients, 60, 10),
  sex = sample(c("male", "female"), n_patients, TRUE),
  treatment = sample(c("A", "B"), n_patients, TRUE),
  biomarker_1 = rnorm(n_patients),
  biomarker_2 = rnorm(n_patients),
  gene_expr_1 = rnorm(n_patients),
  gene_expr_2 = rnorm(n_patients),
  outcome = rbinom(n_patients, 1, 0.5)
)

# Save data ---------------------------
write_csv(clinical_data, "data/clinical_data.csv")

# Preview ---------------------------
head(clinical_data)