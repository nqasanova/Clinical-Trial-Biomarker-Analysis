# Load libraries
library(tidyverse)

# Load data
clinical_data <- read_csv("data/clinical_data.csv")

# T-test
t_test_result <- t.test(biomarker_1 ~ treatment, data = clinical_data)

t_test_result

# Logistic regression 
model <- glm(
  outcome ~ age + biomarker_1 + biomarker_2,
  data = clinical_data,
  family = binomial()
)

summary(model)

# Predictions
clinical_data <- clinical_data |>
  mutate(
    predicted_prob = predict(model, type = "response")
  )

head(clinical_data)

# Simple evaluation
clinical_data |>
  summarise(
    mean_predicted = mean(predicted_prob),
    actual_rate = mean(outcome)
  )

write_csv(clinical_data, "data/clinical_data_with_predictions.csv")