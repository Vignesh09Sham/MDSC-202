#Loading Dataset
dataset = read.csv("Walmart.csv")
df = subset(dataset, select = -c(Store, Date)) 
df_2 = df[-c(101:6435),]

matrix = as.matrix(df_2)
dim(matrix)

# Variance-Covariance Matrix for the matrix
nrows = nrow(matrix)
ncols = ncol(matrix)

print("The Matrix is: ")
print(matrix)
print("The one_matrix is: ")
one = matrix(c(rep(1,nrows)), nrow=nrows, ncol=nrows)
print(one)
print("The deviation matrix is: ")
m = matrix - (one %*% (matrix/nrows))
print(m)
print("The deviation score sums of squares matrix is: ")
m = t(m) %*% m
print(m)
print("The variance-covariance matrix is: ")
V = m/nrows
V
print("Cross-Verification with the cov() function:")
cov(matrix)

# Correlation Matrix
print("The square_root matrix is: ")
sqrt_matrix = diag(1/sqrt(diag(V)))
corr_matrix = sqrt_matrix %*% V %*% sqrt_matrix
print("The correlation matrix is: ")
corr_matrix

#Confirmation with cor() function
cor(matrix)


#Inferences
#1. We can see that Weekly_Sales is positively correlated to all the other features, except temperature.
#   This might be due to the fact that as the temperature rises, people are less likely to go outside and 
#   obviously won't make any purchases at Walmart.

#2. It quite makes sense that Weekly_Sales is positively correlated to Holiday_Flag, since people tend to go
#   outside more often during holidays for shopping. Therefore, the weekly sales will increase.

#3. CPI (Consumer Price Index)is one of the measures for inflation. As CPI increases, inflation also increases.
#   We can see that CPI and unemployment are negatively correlated. Which means that as umemployment drops,  
#   inflation. This is due to the fact that in times of low unemployment, employers typically need to pay 
#   higher wages to attract employees, ultimately leading to rising wage inflation.
   

