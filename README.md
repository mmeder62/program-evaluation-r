# Philadelphia Fresh Start: Program Evaluation in R

### A Note from the Author
I am a Sociology Professor with 37 years of academic experience. As I prepare to move to Philadelphia, I developed this project to demonstrate how professional data science can address the city's complex social challenges, specifically homelessness.

## Project Scenario
This project evaluates the "Fresh Start" initiative in Philadelphia, which provides vocational training to homeless individuals. The goal is to measure the net impact of the program on monthly income using evidence-based policy standards.

## Methodology (The Technical Workflow)
1. **Power Analysis:** Used the `pwr` package to determine that a sample size of n=128 is required for statistical validity.
2. **SQL Integration:** Managed data through a virtual SQLite environment to simulate professional institutional data flows.
3. **Propensity Score Matching (PSM):** Used the `MatchIt` package to balance treatment and control groups, eliminating selection bias.
4. **Difference-in-Differences (DiD):** Implemented a regression model to isolate the "pure" program effect from general economic trends.

## Key Results
The analysis showed a statistically significant income increase of **$259/month** for participants (p < 0.001).
