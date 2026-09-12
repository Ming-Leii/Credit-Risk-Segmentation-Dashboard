-Query 1- Group by Income
SELECT
	CASE
		WHEN MonthlyIncome < 3000 THEN 'Low Income'
		WHEN MonthlyIncome BETWEEN 3000 AND 7000 THEN 'Medium Income'
		ELSE 'High Income'
	END AS income_group,
	COUNT(*) AS total_borrowers,
	SUM(SeriousDlqin2yrs) AS total_defaults,
	ROUND(100.0 * SUM(SeriousDlqin2yrs) / COUNT(*), 2) as default_rate_pct
FROM loans
WHERE MonthlyIncome IS NOT NULL
GROUP BY income_group;

-Query 2- Group by Age 
SELECT
	CASE
		WHEN age < 30 THEN '18-29'
		WHEN age BETWEEN 30 AND 45 THEN '30-45'
		WHEN age BETWEEN 45 AND 60 THEN '46-60'
		ELSE '60+'
	END AS age_group,
	COUNT(*) AS total_borrowers,
	SUM(SeriousDlqin2yrs) AS total_defaults,
	ROUND(100.0 * SUM(SeriousDlqin2yrs) / COUNT(*), 2) AS default_rate_pct
FROM loans
GROUP BY age_group

-Query 3- Group by Debt Ratio 
SELECT
	CASE
		WHEN DebtRatio < 0.3 THEN 'Low Debt Ratio'
		WHEN DebtRatio BETWEEN 0.3 AND 0.6 THEN 'Medium Debt ratio'
		ELSE 'High Debt Ratio'
	END AS debt_group,
	COUNT(*) AS total_borrowers,
	SUM(SeriousDlqin2yrs) AS total_defaults,
	ROUND(100.0 * SUM(SeriousDlqin2yrs) / COUNT(*), 2) AS default_rate_pct
FROM loans
GROUP BY debt_group;

-Query 4- Overall Default rate
SELECT ROUND(100.0 * SUM(SeriousDlqin2yrs) / COUNT(*), 2) AS overall_default_rate
FROM loans