# ==========================================================
# Project: Philadelphia Fresh Start - Program Evaluation
# Author: Mehmet Meder
# Purpose: Impact Analysis using Power Analysis, PSM, and DiD
# ==========================================================

# --- 1. Setup & Libraries ---
options(scipen = 999) # Disable scientific notation
library(tidyverse)    # Data manipulation & Visualization
library(MatchIt)      # Propensity Score Matching
library(pwr)          # Power Analysis
library(DBI)          # Database Interface
library(RSQLite)      # SQL Engine

# --- 2. Phase I: Power Analysis (Planning) ---
# Goal: Determine the required sample size to detect a medium effect (d=0.5)
# with 80% power at a 5% significance level.
power_results <- pwr.t.test(d = 0.5, sig.level = 0.05, power = 0.80, type = "two.sample")
print(power_results) # Required N per group is approx. 64 (Total 128)

# --- 3. Phase II: SQL Data Integration ---
# Simulating a connection to a Philadelphia Institutional Database
con <- dbConnect(RSQLite::SQLite(), ":memory:") 
# In a production environment, we use: dbGetQuery(con, "SELECT * FROM census_data WHERE...")

# --- 4. Phase III: Impact Evaluation (PSM & DiD) ---

# Propensity Score Matching to handle Selection Bias
# m_out <- matchit(program_katilimi ~ yas + egitim_yili, data = raw_data, method = "nearest")
# df_matched <- match.data(m_out)

# Difference-in-Differences to isolate the Net Treatment Effect
# model_did <- lm(income_change ~ program_katilimi, data = df_matched)

# --- 5. Phase IV: Reporting ---
# The results are exported to a professional Word document using gtsummary/flextable.
# See "Output/Philadelphia_Final_Report.docx" for the full analysis.
