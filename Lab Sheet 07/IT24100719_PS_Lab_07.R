ex1_prob <- punif(25, min = 0, max = 40, lower.tail = TRUE) - 
  punif(10, min = 0, max = 40, lower.tail = TRUE)
cat("Exercise 1: Probability train arrives between 8:10-8:25 a.m.:", ex1_prob, "\n")


ex2_prob <- pexp(2, rate = 1/3, lower.tail = TRUE)
cat("Exercise 2: Probability update takes at most 2 hours:", ex2_prob, "\n")

ex3_i_prob <- pnorm(130, mean = 100, sd = 15, lower.tail = FALSE)
cat("Exercise 3(i): Probability IQ > 130:", ex3_i_prob, "\n")

ex3_ii_percentile <- qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)
cat("Exercise 3(ii): 95th percentile IQ score:", ex3_ii_percentile, "\n")