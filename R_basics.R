# Data is entered from left to right anda arranged column wise by default
A = matrix(data = c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = FALSE)
print(matrix)

B = matrix(data = c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = TRUE)
print(B)

#Inserting elements row-wise
C = rbind(1:3, 4:6)
print(C)

#Inserting elements column-wise
D = cbind(c(1,4), c(2,5), c(3,6))
print(D)

# dim gives the dimension of a matrix
print(dim(D))

#nrow gives the number of rows of a matrix
print(nrow(D))

#ncol gives the number of columns of a matrix
print(ncol(D))

E = matrix(c(0.3, 4.5, 55.3, 91, 0.1, 105.5, -4.2, 8.2, 27.9), nrow = 3, ncol = 3)
print(E)

#diag will give the diagonal elements of a matrix
diag(x=E)

print(E[3,2])   #gives the element in the 3rd row and 2nd column

print(E[,2])    #gives the 2nd column of the matrix

print(E[2:3,])  #gives the 2nd and 3rd row of the matrix

print(E[, c(3,1)])  #gives the 3rd column then the 1st column of the matrix in that specified order

print(E[c(3,1), 2:3])  #gives the 2nd and 3rd element of the 3rd row first then the same of the 1st row

F = E   # copies the matrix E to F
print(F)

print(E[, -2])   #removes the 2nd column

F[2,] = 1:3   #replace the values of the 2nd row with 1.0, 2.0, 3.0
print(F)

print(E[-1, 3:2])  #prints element from the 3rd and 2nd column while excluding elements from the 1st row and 1st column

E[c(1,3), 2] = 900   #replaces the 1st and 3rd element in the 2nd column
print(E)

print(F[-1,-2])   #removes 1st row and 2nd column from matrix

print(E[-1, -c(2,3)])  #removes 1st row, 2nd and 3rd column of matrix

F[,3] = F[3,]   #replaces 3rd column with the 3rd row
print(F)

F[c(1,3), c(1,3)] <- c(-7,7)   #replaces the 1st and 3rd elements of the 1st row with -7
                              #replaces the 1st and 3rd elements of thh 3rd row with 7
print(F)

F[c(1,3), 2:1] <- c(65, -65, 88, -88)  #replaces the 1st and 2nd elements of the 2nd column first
                                       #then replaces the same elements of the 1st column
print(F)

diag(x = F) <- rep(x = 0, times=3)   #replaces the diagonal elements with 0
print(F)
