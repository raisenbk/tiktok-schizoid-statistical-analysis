# Statistical Analysis of TikTok's Influence on Schizoid Indications in University Students

## Project Overview

This project investigates the potential influence of TikTok usage on social media habits and schizoid indications among Informatics students at Multimedia Nusantara University (2021 cohort). The analysis employs various statistical methods to explore relationships and differences based on data collected via questionnaires.

This study was conducted as part of the "Probability & Statistics" course requirements. The detailed findings and methodology are documented in `Report.pdf` (in Indonesian), and the statistical analysis is performed using the `R_Script.R` script.

## Dataset

The primary data was collected through a questionnaire administered via Google Forms to Informatics students at Multimedia Nusantara University. Key variables analyzed from this data include:

* `beforetiktok`: Time spent on social media (in hours) by students before they started actively using TikTok.
* `aftertiktok`: Time spent on social media (in hours) by students after they started actively using TikTok.
* `indikasiskizoid`: Data related to schizoid indications among students (derived from questionnaire responses).
* Duration of daily TikTok usage.

The numerical data vectors for `beforetiktok` and `aftertiktok` are embedded directly within the `R_Script.R` file for analysis.

## Methodology & Analysis Performed

The `R_Script.R` file contains the R code for the comprehensive statistical analysis. Key analytical steps include:

* **Descriptive Statistics:** Calculation of central tendency (mean, median), dispersion, skewness, and kurtosis. Visualizations include histograms, boxplots, dot charts, and Q-Q plots.
* **Normality Testing:** Shapiro-Wilk test to assess the normality of data distributions.
* **Inferential Statistics & Hypothesis Testing:**
    * One-sample t-tests and Wilcoxon tests to test if average TikTok usage is greater than a certain value.
    * Paired two-sample t-tests to compare social media usage before and after TikTok.
* **Association Analysis:** Calculation of correlation and covariance between variables like `beforetiktok` and `aftertiktok`.
* **Regression Analysis:** Simple linear regression (`lm(aftertiktok ~ beforetiktok)`) to model the relationship between social media usage before and after TikTok adoption.
* **Chi-Square Test:** (Detailed in the report) Used to examine the dependency between the duration of TikTok usage and schizoid indications.

For a complete understanding of the methodology, statistical formulas, and interpretation of results, please refer to the `Report.pdf`.

## Tools and Technologies Used

* **R:** Programming language for statistical computing and graphics.
* **RStudio:** (Recommended) Integrated Development Environment for R.
* **Base R functions:** Utilized for most statistical calculations, tests, and plotting.

## How to Use / Reproduce Results

1.  **Prerequisites:** Ensure you have R and preferably RStudio installed on your system.
2.  **Get the files:** Clone this repository or download the `R_Script.R` and `Report.pdf` files.
3.  **Install packages (if needed):** If functions like `skewness` or `kurtosis` are not part of your base R and cause errors, you may need to install and load relevant packages (e.g., `install.packages("moments")` then `library(moments)`).
4.  **Run the R Script:**
    * Open `R_Script.R` in RStudio or any R environment.
    * Execute the script line by line or in sections to perform the analysis and view outputs (tables, plots, test results).
5.  **Consult the Report:** For context, detailed explanations of the variables, hypotheses, and in-depth discussion of the results, refer to `Report.pdf`. (Please note the report is written in Indonesian).

## Summary of Key Findings

(Based on the conclusions in `Report.pdf`. Refer to the full report for details.)

* The average daily TikTok usage among the surveyed students was found to be more than 2 hours.
* There was a statistically significant increase in the overall time students spent on social media after they began using TikTok, compared to their usage before TikTok.
* The study found a statistically significant dependency between the duration of students' TikTok usage and the indication of schizoid traits.
