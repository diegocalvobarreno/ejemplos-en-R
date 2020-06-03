#Lectura de datos de un fichero CSV en red

datos <- read.csv2("http://diegocalvo.es/data/personas.csv", 
                   fileEncoding="latin1")


#Lectura de datos de ficheros CSV en la ruta del proyecto

datos <- read.csv2("datos/personas.csv",
                   header = TRUE,
                   sep = ";",
                   dec = ",",
                   fileEncoding="latin1")


#Lectura de datos de un fichero TXT en red

datos <- read.table("http://diegocalvo.es/data/regresion-lineal-multiple.txt", header = TRUE)
