# test.R - Simple R script to test setup in VS Code

# Print a message
print("Hello, R in VS Code!")

# Create a simple vector
numbers <- c(1, 2, 3, 4, 5)

# Calculate the mean
mean_value <- mean(numbers)

# Print the result
cat("The mean of the numbers is:", mean_value, "\n")

# Load the languageserver package (if installed)
if ("languageserver" %in% installed.packages()) {
  library(languageserver)
  cat("languageserver is working correctly!\n")
} else {
  cat("languageserver is NOT installed.\n")
}
