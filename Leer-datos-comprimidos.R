
# Cargar datos a un dataframe
datos <- read.csv2("datos/personas.csv", fileEncoding="latin1")

# --------------------------------------------------------------
# Compresión GZ
# --------------------------------------------------------------


# Comprimir dataframe y escribir en un fichero
write.csv2(datos, gzfile("datos/personas.csv.gz"), row.names = FALSE)


# Descomprimir dataframe leido de un fichero
nuevos_datos = read.csv2("datos/personas.csv.gz")



# --------------------------------------------------------------
# Compresión ZIP
# --------------------------------------------------------------


# Comprimir dataframe y escribir en un fichero
write.csv2(datos, gzfile("datos/personas.csv.zip"), row.names = FALSE)


# Descomprimir dataframe leido de un fichero
nuevos_datos = read.csv2("datos/personas.csv.zip")
