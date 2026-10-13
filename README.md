# Social Science Report in R: A Computational Workbook

[![R](https://img.shields.io/badge/R-4.x-blue.svg)](https://www.r-project.org/)
[![Quarto](https://img.shields.io/badge/Quarto-1.x-purple.svg)](https://quarto.org/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

An open-source, reproducible computational workbook designed for beginning social science students and researchers learning quantitative data processing and visualization in R.

Using open data from **Our World in Data** (World Bank, Barro-Lee, UN WPP), this repository demonstrates how to filter, clean, transform, join, and visualize developmental indicators across eight comparative country cases without relying on static spreadsheets.

---

## 📌 Target Cases & Development Indicators

The workbook examines panel data from **1990 to Present** across eight diverse national economies:

* **Target Countries:** Jamaica, Canada, United States, India, Brazil, Spain, Nigeria, and South Africa.
* **Module 1 (Poverty):** Extreme poverty rates living on less than $3.00/day (PPP adjusted).
* **Module 2 (Education):** Mean years of formal schooling completed by adults aged 15+.
* **Module 3 (Health):** Period life expectancy at birth in years.

---

## 📁 Repository Structure

```text
social-science-report-template/
├── data/                       # Local raw CSV datasets imported from OWID
│   ├── poverty_data.csv
│   ├── education_data.csv
│   └── life_expectancy_data.csv
├── outputs/                    # Output directory for exported figures & tables
│   ├── figures/
│   └── tables/
├── reports/                    # Quarto source documents
│   └── research-report.qmd     # Master computational workbook
├── README.md                   # Repository overview and setup instructions
└── social-science-report-template.Rproj  # RStudio Project File