###EJEMPLO DE MAXIMIZACION VISTO EN CLASE###
library(lpSolve) #Cargar libreria

########### Establecer funcion objeto y restricciones ##########
# Maximizar 
#3x + 2y  Sujeto a: 
#2x + y <= 100 
#x + y  <= 80
#x      <= 40

f.obj <- c(3, 2)
f.con <- matrix(c(2, 1, 1, 1, 1, 0), nrow = 3, byrow = TRUE)
f.dir <- c("<=", "<=", "<=")
f.rhs <- c(100, 80, 40)

lp("max", f.obj, f.con, f.dir, f.rhs)
lp("max", f.obj, f.con, f.dir, f.rhs)$solution
