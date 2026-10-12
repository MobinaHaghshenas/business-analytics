# Financial Performance Evaluation and Company Ranking Using TOPSIS

## Project Overview

This academic decision-analysis project applies the **Technique for Order Preference by Similarity to Ideal Solution (TOPSIS)** to rank companies using financial ratios. It explores how a multi-criteria decision-making method can support comparative financial-performance analysis.

The report presents two case studies:

1. **Technology companies listed on Borsa Istanbul, Turkey:** 13 companies evaluated using 10 financial ratios.
2. **Iranian oil, refining, and petrochemical companies:** 12 companies evaluated using 8 financial indicators.

The documented TOPSIS workflow includes building a decision matrix, normalizing the criteria, applying weights, identifying positive and negative ideal solutions, calculating distances to those solutions, and ranking companies by their relative-closeness coefficients.

## Business Question

Can multiple financial indicators be combined into a single relative-performance ranking for companies in the same industry? The project also examines whether the TOPSIS ranking corresponds with market-value rankings and discusses the limitations of relying on one ranking method.

## Methodology

The report describes equal weighting of the criteria:

- **Turkey technology case:** 10 criteria, each assigned a weight of 0.10.
- **Iranian oil and petrochemical case:** the report states that each of the 8 criteria has a weight of 0.10. These values sum to 0.80 rather than 1.00, so the weighting specification should be checked against the original Excel calculations before the results are reused.

The TOPSIS process described in the report is:

1. Build a decision matrix from the selected financial data.
2. Normalize the matrix using vector (Euclidean) normalization.
3. Apply criterion weights to form the weighted normalized matrix.
4. Identify the positive ideal solution (PIS) and negative ideal solution (NIS), accounting for beneficial and non-beneficial criteria.
5. Calculate each company's Euclidean distance from both ideal solutions.
6. Calculate the relative-closeness coefficient: `Cᵢ = Sᵢ⁻ / (Sᵢ⁻ + Sᵢ⁺)`.
7. Rank the alternatives by their relative-closeness coefficients.

A higher coefficient indicates greater relative closeness to the positive ideal solution under the criteria, weights, and assumptions used.

## Financial Criteria

### Case Study 1 — Turkish Technology Companies

The report lists the following 10 financial ratios:

| Criterion | Financial ratio |
| --- | --- |
| C1 | Current ratio |
| C2 | Acid-test (quick) ratio |
| C3 | Total debt ratio |
| C4 | Debt-to-equity ratio |
| C5 | Current assets turnover |
| C6 | Fixed assets turnover |
| C7 | Net profit margin |
| C8 | Return on equity (ROE) |
| C9 | Working capital turnover |
| C10 | Return on assets (ROA) |

The companies named in the report are Alcatel, Anel, Arena, Armada, Aselsan, Datagate, Escort, Indeks, Karel, Klink, Logo, Netas, and Plastik K.

**Reported TOPSIS result:** Plastik K. ranks first, followed by Karel (second) and Netas (third).

### Case Study 2 — Iranian Oil, Refining, and Petrochemical Companies

The report compares 12 companies using eight indicators grouped into four areas:

| Category | Indicators |
|---|---|
| Profitability | Net Profit Margin; Return on Assets (ROA); Return on Equity (ROE) |
| Efficiency | Asset Turnover; Fixed Asset Turnover |
| Leverage and risk | Total Liabilities to Total Assets (treated as a negative criterion in the report) |
| Liquidity | Current Ratio; Quick Ratio |

The companies are identified below by their market tickers as given in the Persian report. English company names are provided for readability.

| No. | Company name | Ticker |
|---:|---|---|
| 1 | Isfahan Oil Refining Company | شپنا |
| 2 | Bandar Abbas Oil Refining Company | شبندر |
| 3 | Naft Pars Company | شنفت |
| 4 | Tehran Oil Refining Company | شتران |
| 5 | Tabriz Oil Refining Company | شبریز |
| 6 | Sepahan Oil Company | شسپا |
| 7 | Behran Oil Company | شبهرن |
| 8 | Lavan Oil Refining Company | شاوان |
| 9 | Shiraz Oil Refining Company | شراز |
| 10 | Iranol Oil Company | شرانل |
| 11 | Pasargad Oil Company | شپاس |
| 12 | Rangin Chemical Industries | شزنگ |

**Reported TOPSIS result:** Tehran Oil Refining Company (شتران) ranks first, followed by Tabriz Oil Refining Company (شبریز) and Bandar Abbas Oil Refining Company (شبندر).

The rankings above are transcribed from the report and have not been independently recalculated.

## Findings and Interpretation

The report draws different conclusions for the two markets:

- **Turkish technology companies:** the report says the TOPSIS ranking did not sufficiently align with market-value rankings during the period studied and cautions against relying on TOPSIS alone to assess those companies.
- **Iranian oil and petrochemical companies:** the report concludes that its TOPSIS results broadly agree with the fundamental assessment of the more established companies considered.

These are the report's interpretations, not evidence that the rankings predict future share prices or constitute investment recommendations. Results depend on the selected companies, data period, financial ratios, weights, and benefit/cost direction assigned to each criterion.

## Project File

- [Excel workbook — TOPSIS Financial Performance Analysis](TOPSIS-Financial-Performance-Analysis.xlsx)

The workbook should be reviewed to verify the underlying data, formulas, criterion directions, and the Iranian case's reported weights.

## Tools and Skills Demonstrated

- Multi-criteria decision-making (MCDM)
- TOPSIS ranking methodology
- Financial ratio analysis
- Decision-matrix normalization and weighting
- Euclidean-distance and relative-closeness calculations
- Comparative interpretation of company performance
- Excel-based analytical work

## Data Source and References

The report identifies **Codal.ir** as the data source for the Iranian case study and includes academic literature on TOPSIS, multi-criteria decision-making, and financial-performance evaluation. Refer to the original project report for the full bibliography.

---

*Academic project — Decision-Making Fundamentals.*

