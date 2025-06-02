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
