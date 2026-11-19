# after importing readxl library

# create a dataframe 
path = "C:\\Users\\Dalba\\OneDrive\\Desktop\\university\\20261\\dsp\\data.xlsx"
    # notice! this path will only work on my device, download the document and copy the path from your own device before running this code
frame = read_excel(path, header = TRUE)

# specify what variables we need for analysis
neededVariables = frame[, c("Age at enrollment", "Previous qualification (grade)", "Admission grade", "Curricular units 1st sem (approved)", "Curricular units 1st sem (grade)", "Curricular units 2nd sem (approved)", "Curricular units 2nd sem (grade)", "Unemployment rate", "Inflation rate")]

# create a summary of all required data
sumAge = as.numeric(summary(frame $ `Age at enrollment`))
sumQual = as.numeric(summary(frame $ `Previous qualification (grade)`))
sumAdmis = as.numeric(summary(frame $ `Admission grade`))
sumCurAp1 = as.numeric(summary(frame $ `Curricular units 1st sem (approved)`))
sumCurGrade1 = as.numeric(summary(frame $ `Curricular units 1st sem (grade)`))
sumCurAp2 = as.numeric(summary(frame $ `Curricular units 2nd sem (approved)`))
sumCurGrade2 = as.numeric(summary(frame $ `Curricular units 2nd sem (grade)`))
sumEmp = as.numeric(summary(frame $ `Unemployment rate`))
sumInf = as.numeric(summary(frame $ `Inflation rate`))

# find standard deviation of all required data
stddevAge = sd(frame $ `Age at enrollment`)
stddevQual = sd(frame $ `Previous qualification (grade)`)
stddevAdmis = sd(frame $ `Admission grade`)
stddevCurAp1 = sd(frame $ `Curricular units 1st sem (approved)`)
stddevCurGrade1 = sd(frame $ `Curricular units 1st sem (grade)`)
stddevCurAp2 = sd(frame $ `Curricular units 2nd sem (approved)`)
stddevCurGrade2 = sd(frame $ `Curricular units 2nd sem (grade)`)
stddevEmp = sd(frame $ `Unemployment rate`)
stddevInf = sd(frame $ `Inflation rate`)

# create a table of all information
final = rbind(
  "Measure" = c("Min", "1st Quan", "Median", "Mean", "3rd Quan", "Max", "Std. Dev."),
  "Age" = c(sumAge, stddevAge),
  "Qualifications (grade)" = c(sumQual, stddevQual),
  "Admission Grade" = c(sumAdmis, stddevAdmis),
  "C.U. 1 Sem (approved)" = c(sumCurAp1, stddevCurAp1),
  "C.U. 1 Sem (grade)" = c(sumCurGrade1, stddevCurGrade1),
  "C.U. 2 Sem (approved)" = c(sumCurAp2, stddevCurAp2),
  "C.U. 2 Sem (grade)" = c(sumCurGrade2, stddevCurGrade2),
  "Unemployment Rate" = c(sumEmp, stddevEmp),
  "Inflation Rate" = c(sumInf, stddevInf)
)

zscore = head(data.frame(scale(neededVariables)))
