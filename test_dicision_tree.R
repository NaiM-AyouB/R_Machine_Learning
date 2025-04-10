# Load required libraries
library(rpart)
library(rpart.plot)

# Load dataset
data(iris)
head(iris)

# Split the dataset into training and testing (70%/30%)
set.seed(123)  # for reproducibility
index <- sample(1:nrow(iris), 0.7 * nrow(iris))
train_data <- iris[index, ]
test_data <- iris[-index, ]

# Build the decision tree model
model <- rpart(Species ~ ., data = train_data, method = "class")

# Print model summary
print(model)

# Visualize the tree
rpart.plot(model, type = 2, extra = 104, fallen.leaves = TRUE)

# Make predictions
predictions <- predict(model, test_data, type = "class")

# Compare predictions with actual values
conf_matrix <- table(Predicted = predictions, Actual = test_data$Species)
print(conf_matrix)

# Calculate accuracy
accuracy <- sum(diag(conf_matrix)) / sum(conf_matrix)
cat("Accuracy: ", round(accuracy * 100, 2), "%\n")
