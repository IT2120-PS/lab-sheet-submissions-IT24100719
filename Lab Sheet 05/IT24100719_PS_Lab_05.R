getwd()
setwd("C:\\Users\\it24100719\\Downloads\\IT24100719_PS_Lab_05")
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Times)
histogram <- hist(Delivery_Times$Delivery_Time_.minutes.,
                  main = "Histogram for Delivery Times",
                  breaks = seq(20, 70, length = 10),   
                  right = FALSE)
str(Delivery_Times)
colnames((Delivery_Times))
breaks <- round(histogram$breaks)
freq <- histogram$counts
mids <- histogram$mids
classes <- c()

for(i in 1:(length(breaks)-1)) {
  classes[i] <- paste0("[", breaks[i], ",", breaks[i+1], ")")
}
cbind(Classes = classes, Frequency = freq, Midpoint = mids)
cum_freq <- cumsum(freq)
(breaks[-1])
plot(breaks[-1], cum_freq, 
     type = "o", pch = 16, col = "blue",
     main = "Cumulative Frequency Polygon (Ogive)",
     xlab = "Delivery Time", ylab = "Cumulative Frequency")