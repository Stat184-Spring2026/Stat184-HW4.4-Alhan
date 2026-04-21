# Project and Repository Plan

This plan has two parts. Part 1 covers the HW 4.3 project. Part 2 covers the HW 4.4 repository. Each part uses the Goal / Needs / Steps structure from the course.

## Part 1: Project Plan (HW 4.3)

### Goal
Make one Quarto document (`hw4.3-analysis.qmd`) that renders to a PDF. The PDF contains three small analyses: busiest airports from Wikipedia, Monte Carlo integration of a Weibull distribution, and a comparison of GenAI responses on the calcium dataset.

### Needs

**Nouns**
- The Wikipedia page about the busiest airports by passenger traffic
- The `calcium.csv` file (used as context for the GenAI prompts)
- Three plot images: `calcium_plot.png`, `ClaudePlot1.png`, `ClaudePlot2.png`
- One supporting R script: `calcium_analysis.R`
- R packages: `tidyverse`, `rvest`, `knitr`, `kableExtra`, `scales`
- Alt text for every figure
- A rendered PDF output

**Verbs**
- Scraping data with `rvest`
- Cleaning data with `tidyverse`
- Running simulations with `runif` and `set.seed`
- Making plots with `ggplot2`
- Making tables with `kableExtra`
- Rendering to PDF with Quarto

### Steps
1. Scrape the Wikipedia data for six airports from 2020 to 2025.
2. Clean the data and make a table and a plot.
3. Build the Monte Carlo simulation at four resolutions: 10, 100, 1,000, and 10,000 points.
4. Put the four Monte Carlo plots in a 2x2 grid using Quarto sub-figures.
5. Add the calcium plots and write the comparison text.
6. Write the narrative sections: Plan, Analysis, Comparison, Self-Reflection, and GenAI Appendix.
7. Set up the YAML header and the chunk options.
8. Render the QMD to PDF and check it.

## Part 2: Repository Plan (HW 4.4)

### Goal
Put the HW 4.3 work into a clean GitHub repository. The repository uses branches, issues, and pull requests to show version control practice.

### Needs

**Nouns**
- A public GitHub repository
- Two branches: `main` (default) and `dev` (working branch)
- Labeled GitHub Issues for each task
- A project-specific `README.md`
- This `plan.md` file
- The HW 4.3 deliverables (QMD, PDF, plot images, R script, and supporting files)

**Verbs**
- Working with a two-branch workflow
- Opening labeled Issues
- Writing clear commit messages
- Opening a Pull Request to merge `dev` into `main`
- Reviewing and merging the Pull Request

### Steps
1. Keep `main` as the default branch. Only merged work goes to `main`.
2. Create a `dev` branch from `main` for active work.
3. Open Issues for each task with clear labels.
4. On `dev`, add the files in separate commits. Each commit message starts with "If applied, this commit will" and links to the Issue it closes.
5. Open a Pull Request from `dev` to `main`. Give it a clear title and description.
6. Merge the Pull Request so `main` is up to date.
7. Check that every Issue linked to a commit is closed.
