# Given a positive definite square matrix, find its square-root matrix

A = matrix(data = c(4,0,0,0,6,0,0,0,8), nrow = 3, ncol = 3, byrow=TRUE)
print(A)

# getting eigen values and eigen vectors
eigen_val_and_vec = eigen(A)

# note: eigen(A) handles repeated eigen values internally, so eigen vectors are not repeated.

# getting square-root of eigen values for lambda^-1
sqrt_eigvals = sqrt(eigen_val_and_vec$values)

# Getting diagonal matrix lambda
lambda = diag(sqrt_eigvals)

# calculating square-root matrix
sqrt_A = eigen_val_and_vec$vectors %*% lambda %*% solve(eigen_val_and_vec$vectors)

print("Square root of A:")
print(sqrt_A)