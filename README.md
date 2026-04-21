# STAT 184: HW 4.3 and HW 4.4

Alhan Akdemir's repository for STAT 184 (Spring 2026, Penn State University Park). It holds the HW 4.3 Quarto analysis and the HW 4.4 GitHub practice work.

## Overview

The main file is `hw4.3-analysis.qmd`. It renders to a PDF with three small analyses:

1. Busiest airports from 2020 to 2025 (Wikipedia scrape).
2. Monte Carlo integration of a Weibull distribution.
3. A comparison of GenAI responses on a calcium dataset.

HW 4.4 adds version control practice on top of that content: branches, issues, and a pull request. The full plan is in `plan.md`.

### Interesting Insight (Optional)

All six airports in the analysis recovered from the COVID drop, but not in the same way. ATL and DFW dropped slightly from 2024 to 2025. FRA is still below its European peers. IST grew from a low base into the top group in just a few years. See Section 1 of `hw4.3-analysis.pdf` for the table and the trend plot.

## Data Sources and Acknowledgements

- **Wikipedia**: List of busiest airports by passenger traffic. Publicly accessible. Scraped with `{rvest}` inside the QMD.
  <https://en.wikipedia.org/wiki/List_of_busiest_airports_by_passenger_traffic>
- **calcium.csv**: Provided by the STAT 184 course staff. Used as context for the GenAI prompts in Section 3.
- **GenAI tools used**: Anthropic Claude (Opus 4.6 Extended Thinking and Sonnet 4.6 Extended), and the ASU Image Accessibility tool (GPT-4o). Each use is documented in the QMD's GenAI Usage Appendix.
- This repository was created from the STAT 184 course template for HW 4.4.

## Current Plan

See `plan.md` for the full plan. It covers both the HW 4.3 project and the HW 4.4 repository setup, each with Goal / Needs / Steps.

## Repo Structure

```
Stat184-HW4.4-Alhan/
├── README.md
├── plan.md
├── hw4.3-analysis.qmd
├── hw4.3-analysis.pdf
├── calcium_plot.png
├── ClaudePlot1.png
├── ClaudePlot2.png
├── calcium_analysis.R
├── ClaudeResponse.docx
├── Quarto-Main-Assignment.Rproj
├── .gitignore
├── images/
└── optional_files/
```

## Authors

- **Alhan Akdemir**, B.S. Data Sciences, Penn State University Park
- Email: *[axa6737@psu.edu]*
- GitHub: [@zeroxalhan](https://github.com/zeroxalhan)
