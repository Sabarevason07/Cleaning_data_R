Employee Data Cleaning and Transformation Script
This R script is designed to clean and transform employee data from a CSV file. It performs various data preprocessing tasks such as handling missing values, standardizing column formats, calculating employee tenure, and categorizing experience levels.

Features
No External Libraries Required: Utilizes only base R functions.
Data Cleaning:
Fills missing names with "Unknown".
Fills missing departments with "Unassigned".
Imputes missing salaries with the average salary.
Drops rows with missing Age or DOB.
Data Transformation:
Converts DOB and Joining_Date columns to Date format.
Calculates employee tenure (in years) since the joining date.
Categorizes employees into experience levels:
Beginner: Less than 1 year of experience
Intermediate: 1 to 3 years of experience
Experienced: 3 to 5 years of experience
Expert: More than 5 years of experience
Output:
The cleaned and transformed dataset is saved as cleaned_employees.csv in the specified directory.
Prerequisites
R must be installed on your system.
No additional R packages are required.
Installation and Setup
Make sure R is installed on your system.
Place the input CSV file (Employees.csv) in the directory: F:/Data/
The input file should contain the following columns:
Name
Age
DOB (Date of Birth, in YYYY-MM-DD format)
Department
Salary
Joining_Date (Date of Joining, in YYYY-MM-DD format)
Performance_Score
Usage
Open the script in an R environment or any text editor.
Modify the file path if necessary:
r
Copy
Edit
data <- read.csv("F:/Data/Employees.csv", stringsAsFactors = FALSE)
Run the script using your preferred R IDE or the command line.
Output
The cleaned and transformed data will be saved as:
bash
Copy
Edit
F:/cleaned_employees.csv
The output CSV file will include the following additional columns:
Tenure: Employee tenure in years.
Experience_Level: Categorized experience level (Beginner, Intermediate, Experienced, Expert).
Example
Sample Input (Employees.csv):

csv
Copy
Edit
Name,Age,DOB,Department,Salary,Joining_Date,Performance_Score
John Doe,30,1993-02-15,HR,50000,2020-01-01,A
Jane Smith,25,1998-08-22,Finance,,2019-03-15,B
,,2000-05-05,IT,45000,2022-06-01,C
Sample Output (cleaned_employees.csv):

csv
Copy
Edit
Name,Age,DOB,Department,Salary,Joining_Date,Performance_Score,Tenure,Experience_Level
John Doe,30,1993-02-15,HR,50000,2020-01-01,A,4.15,Intermediate
Jane Smith,25,1998-08-22,Finance,47500,2019-03-15,B,5.95,Expert
Unknown,23,2000-05-05,IT,45000,2022-06-01,C,2.74,Intermediate
Notes
Ensure the date columns (DOB and Joining_Date) are in the format YYYY-MM-DD.
The script ignores rows with missing Age or DOB values.
Invalid dates in Joining_Date will be removed.
License
This project is licensed under the MIT License - see the LICENSE file for details.

Author
SABAREVASON D
Feel free to reach out for any questions or improvements!
Acknowledgements
This script was developed to demonstrate data cleaning and transformation techniques using base R functionalities.
Contributing
Contributions are welcome! If you find any issues or have suggestions, please open an issue or submit a pull request.
