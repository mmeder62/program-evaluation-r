# --- 1. Setup & Libraries ---
options(scipen = 999) # Disable scientific notation
library(tidyverse)    # Data manipulation
library(MatchIt)      # For PSM
library(pwr)          # For Power Analysis
library(DBI)          # SQL Connection
library(RSQLite)      # SQL Driver

# --- 2. Power Analysis (Planning Phase) ---
# Aim: Find required sample size for a medium effect (0.5)
pwr.t.test(d = 0.5, sig.level = 0.05, power = 0.80, type = "two.sample")

# --- 3. SQL Data Management ---
# Simulating database connection for professional data handling
con <- dbConnect(RSQLite::SQLite(), ":memory:")

# --- 4. Impact Analysis (PSM & DiD) ---
# PSM: Balancing treatment and control groups
# m_out <- matchit(program_katilimi ~ yas + egitim, data = df, method = "nearest")

# DiD: Calculating the net impact of the program
# model_did <- lm(income_change ~ program_katilimi, data = df_matched)
