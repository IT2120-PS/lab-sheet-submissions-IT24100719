setwd("C:\\Users\\it24100719\\Downloads\\IT24100719_PS_Lab_04")
branch_data <- read.table("Exercise.txt",header = TRUE ,sep = ",")
fix(branch_data)
attach(branch_data)

boxplot(Sales_X1,main ="Box plot for Sales",outline =TRUE,outpch=8,horizontal=FALSE)

summary(Advertising_X2)
quantile(Advertising_X2)
IQR(Advertising_X2)


get.Function <- function(input) {
  
   q1 <- quantile(input)[2]
   q2 <- quantile(input)[4]
   iqr <- IQR(input)
   
   ub <- q2 + 1.5*iqr
   lb <- q1 + 1.5*iqr
   
   print(paste("Upper Bound =", ub))
   print(paste("Lower Bound =",lb))
   print(paste("Outliers:", paste(sort(input[input < lb | input > ub]),collapse = ",")))
  
}

get.Function(Years_X3)

