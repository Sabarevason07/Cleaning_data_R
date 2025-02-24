# Employee Data Cleaning and Transformation Script

This R script is designed to clean and transform employee data from a CSV file. It performs various data preprocessing tasks such as handling missing values, standardizing column formats, calculating employee tenure, and categorizing experience levels.

---

## Features
- **No External Libraries Required**: Utilizes only base R functions.
- **Data Cleaning**:
  - Fills missing names with `"Unknown"`.
  - Fills missing departments with `"Unassigned"`.
  - Imputes missing salaries with the average salary.
  - Drops rows with missing `Age` or `DOB`.
- **Data Transformation**:
  - Converts `DOB` and `Joining_Date` columns to `Date` format.
  - Calculates employee tenure (in years) since the joining date.
  - Categorizes employees into experience levels:
    - `Beginner`: Less than 1 year of experience
    - `Intermediate`: 1 to 3 years of experience
    - `Experienced`: 3 to 5 years of experience
    - `Expert`: More than 5 years of experience
- **Output**:
  - The cleaned and transformed dataset is saved as `cleaned_employees.csv` in the specified directory.

---

## Prerequisites
- R must be installed on your system.
- No additional R packages are required.

---

## Installation and Setup
1. Make sure R is installed on your system.
2. Place the input CSV file (`Employees.csv`) in the directory: `F:/Data/`
3. The input file should contain the following columns:
   - `Name`
   - `Age`
   - `DOB` (Date of Birth, in `YYYY-MM-DD` format)
   - `Department`
   - `Salary`
   - `Joining_Date` (Date of Joining, in `YYYY-MM-DD` format)
   - `Performance_Score`

---

## Usage
1. Open the script in an R environment or any text editor.
2. Modify the file path if necessary:
   ```r
   data <- read.csv("F:/Data/Employees.csv", stringsAsFactors = FALSE)
