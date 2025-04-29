
library(reticulate)
use_virtualenv("~/venv", required = TRUE)
library(tensorflow)
# Check if GPU is available
tf <- import("tensorflow")
if (length(tf$config$list_physical_devices('GPU')) > 0) {
  cat("Using device: GPU\n")
} else {
  cat("Using device: CPU\n")
}
matrix_size <- 10000
matrix_a <- array(runif(matrix_size * matrix_size), dim = c(matrix_size, matrix_size))
matrix_b <- array(runif(matrix_size * matrix_size), dim = c(matrix_size, matrix_size))
tensor_a <- tf$constant(matrix_a, dtype = tf$float32)
tensor_b <- tf$constant(matrix_b, dtype = tf$float32)
start_time <- Sys.time()
result <- tf$matmul(tensor_a, tensor_b)
end_time <- Sys.time()
cat("Time taken for matrix multiplication:", end_time - start_time, "seconds\n")

rm(matrix_a, matrix_b, tensor_a, tensor_b, result)

