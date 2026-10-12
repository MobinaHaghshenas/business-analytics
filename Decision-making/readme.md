# Financial Performance Evaluation and Company Ranking Using TOPSIS

## Project Overview

This academic decision-analysis project applies the **Technique for Order Preference by Similarity to Ideal Solution (TOPSIS)** to rank companies using financial ratios. It explores how a structured, multi-criteria approach can support financial performance comparison within an industry.

The report presents two case studies:

1. **Technology companies listed on Borsa Istanbul (Turkey):** 13 companies evaluated using 10 financial ratios.
2. **Oil and petrochemical companies listed in Iran:** 12 companies evaluated using 8 financial indicators.

The work follows the TOPSIS workflow documented in the report: construct a decision matrix, normalize the criteria, apply criterion weights, calculate distances from the positive and negative ideal solutions, compute each company's relative closeness score, and rank the alternatives.

## Business Question

Can companies in the same industry be compared more systematically by combining several financial indicators into one relative-performance score? The project also discusses whether a financial-ratio ranking aligns with market-value ranking, as well as the limits of using a single ranking method to interpret company performance.

## Methodology

The report assumes **equal importance for the criteria** in each case study:

- 10 criteria × 0.10 weight in the Turkey technology-company case.
- 8 criteria × 0.10 weight in the Iran oil and petrochemical case.

The TOPSIS calculation is organized into these steps:

1. Build the decision matrix from the selected financial data.
2. Normalize the decision matrix using vector (Euclidean) normalization.
3. Multiply normalized values by the criterion weights to obtain the weighted normalized matrix.
4. Identify the positive ideal solution (PIS) and negative ideal solution (NIS), accounting for whether a criterion is beneficial or non-beneficial.
5. Calculate each company's Euclidean distance from the two ideal solutions.
6. Calculate the relative closeness coefficient:

   `Cᵢ = Sᵢ⁻ / (Sᵢ⁻ + Sᵢ⁺)`

7. Rank companies by their relative closeness scores.

A higher closeness coefficient indicates a company is closer to the positive ideal and farther from the negative ideal under the criteria and assumptions used in the model.

## Financial Criteria

### Case Study 1 — Turkey Technology Companies

The report describes 10 financial ratios:

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

The companies listed in the report are Alcatel, Anel, Arena, Armada, Aselsan, Datagate, Escort, Indeks, Karel, Klink, Logo, Netas, and Plastik K.

**Reported result:** Plastik K. receives rank 1, followed by Karel (rank 2) and Netas (rank 3) in the report's TOPSIS ranking.

### Case Study 2 — Iranian Oil and Petrochemical Companies

The report compares 12 companies using eight indicators grouped into four areas:

| Area | Criteria |
| --- | --- |
| Profitability | C1: Net profit margin; C2: Return on assets (ROA); C3: Return on equity (ROE) |
| Efficiency | C4: Asset turnover; C5: Fixed-asset turnover |
| Leverage / risk | C6: Total liabilities to total assets (treated as a negative criterion in the report) |
| Liquidity | C7: Current ratio; C8: Quick ratio |

The companies are Shapna, Shabندر, Shenفت, Shتران, Shabriz, Shسپا, Shبهرن, Shavan, Shiraz, Shranل, Shpas, and Shزنگ, identified in the Persian report by their Iranian market tickers. Their names are retained here in the form used in the source report where practical.

**Reported result:** Shتران (Tehran Oil Refining Company; ticker شتران) ranks first, followed by Shabriz (شبرِیز) and Shabندر (شبندر), according to the report's TOPSIS calculation.

## Findings and Interpretation

The report reaches different conclusions for the two markets:

- **Turkey technology case:** the report states that the TOPSIS ranking did not align sufficiently with market-value rankings over the period discussed, and cautions that TOPSIS alone was not sufficient to assess the financial performance of the technology companies in that context.
- **Iran oil and petrochemical case:** the report concludes that its TOPSIS results are broadly consistent with the fundamental assessment of the more established companies considered.

These are the report's interpretations, not proof that TOPSIS rankings predict future share prices. Results depend on the selected companies, financial data, criterion definitions, weights, and treatment of beneficial versus non-beneficial indicators.

## Files

- **Excel workbook:** contains the project calculations and/or financial data used in the analysis. Review the workbook's worksheets for the underlying calculation tables.


## Tools and Skills Demonstrated

- Multi-criteria decision analysis (MCDM)
- TOPSIS ranking methodology
- Financial ratio analysis
- Decision-matrix normalization and weighting
- Euclidean distance and relative-closeness calculations
- Comparative interpretation of company performance
- Excel-based analytical work


## References and Data Source

The report includes academic literature on TOPSIS, fuzzy multi-criteria decision-making, and financial performance evaluation. For the Iranian case study, the report identifies **Codal.ir** as its data source. 

---

*Academic project — Decision-Making Fundamentals.*
