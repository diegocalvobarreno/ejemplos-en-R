
# --------------------------------------------------------------
# Funcion 1: Saludo sin argumentos
# --------------------------------------------------------------
saludo <- function(){
  print("Bienvenido al curso de R")
}

saludo()

# --------------------------------------------------------------
# Funcion 2: Cálculos matematicos simples 
# --------------------------------------------------------------
media <- function(x,y) {
  (x+y)/2
}
media(3,4)

# --------------------------------------------------------------
# Funcion 3: Cálculos matematicos simples + con un argumento por defecto
# --------------------------------------------------------------

incremento <- function(valor, incremento=3){
  valor + incremento
}

incremento(4,10)
incremento(4)

# --------------------------------------------------------------
# Funcion 4: Calculos con cadenas de texto (codificador)
# --------------------------------------------------------------

vocales_por_numeros_codifica <- function(...){
  x <- paste(...)
  x <- tolower(x) # pasa los valores a minusculas
  x <- chartr("a", "1", x) # Sustituye a por el 1
  x <- chartr("e", "2", x)
  x <- chartr("i", "3", x)
  x <- chartr("o", "4", x)
  x <- chartr("u", "5", x) # la función devulve el valor de x.
  x
}

texto_codificado <- vocales_por_numeros_codifica("Hola a todos los nuevos programadores")
texto_codificado

# --------------------------------------------------------------
# Funcion 4: Calculos con cadenas de texto (descodificador)
# --------------------------------------------------------------

vocales_por_numeros_descodifica <- function(...){
  x <- paste(...)
  x <- tolower(x) # pasa los valores a minusculas
  x <- chartr("1", "a", x) # Sustituye a por el 1
  x <- chartr("2", "e", x)
  x <- chartr("3", "i", x)
  x <- chartr("4", "o", x)
  x <- chartr("5", "u", x)
  x  # la función devuelve el valor de x.
}

vocales_por_numeros_descodifica(texto_codificado)
