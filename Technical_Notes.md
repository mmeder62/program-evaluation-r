# Methodological Justification & Technical Deep-Dive

This document explains the scientific rationale behind the techniques used in the Philadelphia Fresh Start project.

### 1. Why Power Analysis?
In social policy evaluation, resources are often limited. I conducted a **Power Analysis** (using the `pwr` package) to determine the optimal sample size (n=128). This ensures the study is:
* **Cost-effective:** Not wasting funds on an oversized sample.
* **Scientifically Valid:** Large enough to detect a meaningful impact (Cohen's d = 0.5) without falling into the "false negative" trap.

### 2. Addressing Selection Bias with PSM
One of the biggest challenges in sociology is that individuals who volunteer for programs are often more motivated than those who don't. This creates **Selection Bias**. 
* **My Solution:** I used **Propensity Score Matching (PSM)** to "twin" participants with non-participants based on age and education level. This creates a fair, "apples-to-apples" comparison.

### 3. Difference-in-Differences (DiD): The Gold Standard
Why not just compare "Before" and "After"? Because Philadelphia's economy might improve on its own, raising everyone's income. 
* **My Solution:** **DiD** allows us to subtract the general trend (the change in the control group) from the program group's progress. What remains is the **Net Treatment Effect** ($259/month increase), attributable solely to the program.

### 4. SQL-Driven Workflow
To simulate a professional environment, data management was handled through **SQL queries**. This demonstrates my ability to work with large-scale relational databases common in US government and NGO sectors.
