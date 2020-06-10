
# --------------------------------------------------------------
# Condicional IF
# --------------------------------------------------------------

x <- runif(1, 0, 10) # Generar un número aleatoreo entre 0 y 10
x

if(x > 5) {
  print("Número mayor de 5")
} else {
  print("Número menor o igual a 5")
}
  


# --------------------------------------------------------------
# Selector SWITCH
# --------------------------------------------------------------

x <- 1:10
tipo <- 'media'

switch(tipo,
       media = mean(x),
       mediana = median(x),
       desviacion_tipìca = sd(x))



# --------------------------------------------------------------
# Bucle simple FOR
# --------------------------------------------------------------


for(i in 1:10) {
  print(i)
}



# --------------------------------------------------------------
# Bucle con condición WHILE
# --------------------------------------------------------------


contador <- 0

while(contador < 10) {
  print(contador)
  contador <- contador + 1
}



# --------------------------------------------------------------
# Bucle infinito REPEAR
# --------------------------------------------------------------

contador <- 0
repeat {
  print(contador)
  contador <- contador + 1
  if(contador == 10) break
}

