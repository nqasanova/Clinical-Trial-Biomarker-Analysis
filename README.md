# Clinical Trial Biomarker Analysis

## Overview
This project demonstrates an end-to-end clinical data science workflow in R, focusing on the analysis of simulated clinical trial data, including biomarker and gene expression variables. The goal is to replicate key tasks commonly performed in healthcare and pharmaceutical data science.

---

## Objectives
- Perform exploratory data analysis (EDA) on clinical data  
- Conduct statistical hypothesis testing  
- Build predictive models for patient outcomes  
- Generate publication-style tables and visualizations  
- Develop an interactive dashboard using Shiny  

---

## Methods

### Data Simulation
A synthetic clinical dataset was generated to mimic real-world trial data, including:
- Patient demographics (age, sex)
- Treatment groups
- Biomarkers
- Gene expression features
- Binary clinical outcome

### Exploratory Data Analysis
- Summary statistics and distributions  
- Group comparisons by treatment  
- Visualization of biomarkers and outcomes  

### Statistical Analysis
- Two-sample t-test to compare biomarker levels between treatment groups  
- Logistic regression to model the relationship between clinical variables and patient outcomes  

### Visualization
- Histograms and density plots  
- Boxplots for treatment comparisons  
- Publication-style figures using `ggplot2`  

### Interactive Dashboard
A Shiny application enables:
- Dynamic selection of biomarkers  
- Interactive visualization of distributions  
- Summary tables by treatment group  

---

## Key Findings
- No strong evidence of a significant difference in biomarker levels between treatment groups  
- Biomarker values show moderate association with clinical outcomes  
- Age contributes to outcome variability in the regression model  

These findings illustrate how statistical models can support decision-making in clinical research settings.

---

## Project Structure
clinical-trial-biomarker-analysis/
- data/        (Simulated datasets)
- R/           (Analysis scripts)
- report/      (Tables and figures)
- app/         (Shiny dashboard)
- README.md

---

## Reproducibility

To reproduce the analysis, run the scripts in the following order:

1. `01-load-data.R`  
2. `02-exploratory-analysis.R`  
3. `03-statistical-analysis.R`  
4. `04-reporting-tables.R`  

---

## Tools & Technologies
- R  
- tidyverse (dplyr, ggplot2)  
- Shiny  
- Git & GitHub  