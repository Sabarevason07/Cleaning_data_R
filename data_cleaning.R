# Step 1: Load the Data
file.exists("F:/Data/Employees_data.csv")
data <- read.csv("F:/Data/Employees_data.csv", stringsAsFactors = FALSE)

# Step 2: Inspect the Data
str(data)
summary(data)
head(data)

# Step 3: Handle Missing Values

data$Name[data$Name == "" | is.na(data$Name)] <- "Unknown"

data$Department[data$Department == "" | is.na(data$Department)] <- "Unassigned"

average_salary <- mean(as.numeric(data$Salary), na.rm = TRUE)
data$Salary[is.na(data$Salary) | data$Salary == ""] <- average_salary
data$Salary <- as.numeric(data$Salary)  # Convert to numeric

data <- data[data$Age != "" & !is.na(data$Age) & data$DOB != "" & !is.na(data$DOB), ]

# Step 4: Standardize Column Formats

data$DOB <- as.Date(data$DOB, format = "%Y-%m-%d")

data <- data[data$Joining_Date != "" & !is.na(data$Joining_Date), ]
data$Joining_Date <- as.Date(data$Joining_Date, format = "%Y-%m-%d")

# Step 5: Create New Derived Columns

data$Tenure <- as.numeric(difftime(Sys.Date(), data$Joining_Date, units = "days")) / 365.25

data$Experience_Level <- ifelse(
  data$Tenure < 1, "Beginner",
  ifelse(data$Tenure < 3, "Intermediate",
         ifelse(data$Tenure < 5, "Experienced", "Expert")
  )
)

# Step 6: Save the Cleaned Dataset
write.csv(data, "F:/Data/cleaned_employees.csv", row.names = FALSE)

cat("Data cleaning and transformation completed successfully.\n")
