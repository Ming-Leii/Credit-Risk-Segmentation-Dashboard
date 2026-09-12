# **Credit Risk Segmentation Dashboard**

SQL + Power BI analysis identifying which groups of borrowers have the highest default risk, using a credit dataset

## Overview 

* **\*\*Dataset\*\*:** \[Give Me Some Credit](https://www.kaggle.com/c/GiveMeSomeCredit) - 150,000 borrower records with income, age, debt ratio and default outcome
* **Tools:** SQLite(data cleaning \& segmentation queries), Power BI (Dashboard)
* **Overall Default Risk:** 6.68%

## Process

1. Load the raw dataset into a SQLite database
2. Wrote SQL queries to segment borrowers by income, age and debt ratio; calculating default rate per group
3. Exported results of the groups and built a Power BI dashboard to visualize and compare across groups

## Key Findings

* **Age is the strongest risk signal:** Borrowers aged 18-29 default at 11.73%, nearly 4x the rate of borrowers aged 60+(3.0%). Risk falls steadily with age
* **Income is not linear:** The default rate of borrowers with medium income(7.57%) is slightly more than low income borrowers(6.92%), while high income borrowers default the least(5.51%); suggesting income alone isn't a reliable predictor
* **Debt ratio shows a moderate effect:** Default rate rises from 5.87%(Low debt ratio) to 7.58%(High debt ratio), highlighting a real but smaller gradient than age

## Dashboard

!\[Dashboard Screenshot](dashboard.png)

