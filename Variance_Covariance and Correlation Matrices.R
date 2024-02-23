set.seed(123)
m = matrix(sample(1 : 20, 100, replace = TRUE), nrow = 15, ncol = 2)

#Calculating variance-covariance matrix
n = nrow(m)
col_means = colMeans(m) #mean of each column
center_matrix = sweep(m, 2, col_means, FUN = "-")  #centering the data

cov_matrix = t(center_matrix) %*% center_matrix / (n - 1)
cov_matrix

#Calculating correlation matrix
std_devs = apply(m, 2, FUN = sd)  # Calculate standard deviations

# Calculate correlation matrix
corr_matrix = cov_matrix / outer(std_devs, std_devs, FUN = "*")
corr_matrix


