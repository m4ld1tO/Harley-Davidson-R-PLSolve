##########  HARLEY DAVIDSON ##########
install.packages("lpSolve")    #Instalar solo si no cuentan con la libreria
install.packages("lpSolveAPI") #Instalar solo si no cuentan con la libreria

library(lpSolve) #Cargar libreria

########### Establecer funcion objeto y restricciones ##########
# Maximizar 
#20x + 28y  Sujeto a: 
#60x + 105y <= 48000 
#25x + 50y  <= 48000 

f.obj <- c(20, 28)
f.con <- matrix(c(60, 105, 25, 50), nrow = 2, byrow = TRUE)
f.dir <- c("<=", "<=")
f.rhs <- c(48000, 48000)

lp("max", f.obj, f.con, f.dir, f.rhs) # Muestra la solucion, horas a invertir en la produccion del proximo mes
lp("max", f.obj, f.con, f.dir, f.rhs)$solution # Muestra la cantidad de motocicletas a fabricar para mayor beneficio
