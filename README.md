# Quantitative Political Economy & Computational Pedagogy Series

An undergraduate computational pedagogy series using **R**, **Quarto**, and **Tidyverse** to analyze international human development, poverty dynamics and population health. 

Designed for social science students, this curriculum combines rigorous data hygiene, spatial analysis, econometric modeling and machine learning while maintaining my Global South lens.

---

## Comparative Case Studies

While analyzing global trends, the labs pay special empirical attention to eight comparative nations:
* **Global North:** Canada, United States, Spain
* **Global South:** Jamaica, Brazil, India, Nigeria, South Africa

---

## Lab Curriculum Overview

The sequence spans five hands-on computational workbooks:

### Lab 1: Data Hygiene, Tidy Pipelines & Time-Series
* **Links:** [View Live Web Report](https://neenzworld.github.io/Writing-a-Social-Science-Report/reports/Measuring Global Human Development.html) | [View Quarto Source Code](reports/research-report.qmd)
* **Focus:** Data wrangling, stock vs. flow metrics, handling missingness by design, and panel visualizations.
* **Methods:** Multi-way relational joins (`inner_join`), long/wide transformations, and panel trend graphs.
* **Key Concept:** Distinguishing structural development trends from temporary macro-shocks (2008 Financial Crisis, 2020 COVID shock).

### Lab 2: Spatial Analysis & Vector Mapping
* **Links:** [View Live Web Report](https://neenzworld.github.io/Writing-a-Social-Science-Report/Spatial Data Analysis & Mapping in R.html) | [View RMarkdown Source Code](Spatial-Data-Analysis---Mapping-in-R.rmarkdown)
* **Focus:** Geographic data structures, spatial joins, cartographic projections, and choropleths.
* **Methods:** Geospatial manipulation with `sf`, spatial joining (`st_join`), Equal Earth projections, and `viridis` color scales.
* **Key Concept:** Cartographic ethics and mapping spatial inequality across Global South regions without map projection distortion.

### Lab 3: Cross-Sectional Modeling & The Preston Curve
* **Links:** [View Live Web Report](https://neenzworld.github.io/Writing-a-Social-Science-Report/lab-3-modeling.html) | [View Quarto Source Code](lab-3-modeling.qmd)
* **Focus:** Bivariate linear/logarithmic regression, goodness-of-fit evaluation, and residual analysis.
* **Methods:** Ordinary Least Squares (`lm`), model tidying (`broom::tidy`, `glance`), and residual extraction (`augment`).
* **Key Concept:** Testing the Preston Curve—evaluating positive health outliers (nations overperforming their economic baselines) vs. negative outliers.

### Lab 4: Advanced Econometric Modeling — Panel Fixed Effects & Logit
* **Links:** [View Live Web Report](https://neenzworld.github.io/Writing-a-Social-Science-Report/lab 4.advanced-models.html) | [View Quarto Source Code](lab-4-advanced-models.qmd)
* **Focus:** Panel data fixed effects and binary outcome modeling for structural poverty traps.
* **Methods:** Two-Way Fixed Effects (`fixest::feols`), Logistic Regression (`glm`), Odds Ratios ($\exp(\beta)$), and predicted probability S-curves.
* **Key Concept:** Eliminating time-invariant omitted variable bias (geography, colonial institutional legacies) and calculating vulnerability probabilities.

### Lab 5: Computational Typologies — PCA & Unsupervised Clustering
* **Links:** [View Live Web Report](https://neenzworld.github.io/Writing-a-Social-Science-Report/lab-5-unsupervised-learning.html) | [View Quarto Source Code](lab-5-unsupervised-learning.qmd)
* **Focus:** Feature standardisation, dimensionality reduction, and unsupervised machine learning.
* **Methods:** $Z$-score scaling (`scale`), Principal Component Analysis (`prcomp`), PCA biplots, and $k$-Means Clustering (`kmeans`).
* **Key Concept:** Moving beyond rigid "North vs. South" binaries to discover data-driven country typologies and structural middle-income heterogeneity.

---

## Technical Stack & Packages

* **Core R Infrastructure:** `tidyverse` (`dplyr`, `ggplot2`, `readr`, `tidyr`, `purrr`)
* **Spatial Analytics:** `sf`, `rnaturalearth`, `rnaturalearthdata`, `viridis`
* **Econometrics & Modeling:** `broom`, `fixest`, `ggrepel`
* **Machine Learning:** Base R `prcomp`, `kmeans`, `stats`
* **Publishing Engine:** [Quarto](https://quarto.org/) (`.qmd`) / R Markdown compiled to responsive HTML

---

## Repository Architecture

```text
├── data/
│   ├── poverty_data.csv          # OWID / World Bank PIP headcount poverty ($3/day)
│   ├── education_data.csv        # OWID Mean Years of Schooling (Adults 15+)
│   └── life_expectancy_data.csv  # OWID Life Expectancy at birth
├── reports/
│   ├── research-report.qmd       # Lab 1 Quarto Source
│   └── research-report.html      # Lab 1 Rendered Output
├── .nojekyll                      # Unlocks reports/ subfolder for GitHub Pages
├── Spatial-Data-Analysis---Mapping-in-R.rmarkdown # Lab 2 Source
├── Spatial-Data-Analysis---Mapping-in-R.html     # Lab 2 Rendered Output
├── lab-3-modeling.qmd             # Lab 3 Quarto Source
├── lab-3-modeling.html            # Lab 3 Rendered Output
├── lab-4-advanced-models.qmd      # Lab 4 Quarto Source
├── lab-4-advanced-models.html     # Lab 4 Rendered Output
├── lab-5-unsupervised-learning.qmd # Lab 5 Quarto Source
├── lab-5-unsupervised-learning.html # Lab 5 Rendered Output
└── README.md                      # Curriculum Overview & Documentation