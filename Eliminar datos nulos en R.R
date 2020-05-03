
# http://www.diegocalvo.es/eliminar-na-o-valores-nulos-en-r/

# Cargar datos para ejemplos
id <- c(1,4,3,NA,7,6,9,4,0,8)
texto <- c("a", "b", NA, "NA","a","b","b","b","c","d")
valor <- c(2,8,7,5,1,9,4,3,7,2)
datos <- data.frame(id=id,texto=texto,valor=valor)
head(datos, n=10)

# --------------------------------------------------------------
# CONTAR NULOS
# --------------------------------------------------------------

# Contar número de nulos por columna (forma simple)
sapply(datos, function(x) sum(is.na(x)))


# --------------------------------------------------------------
# ELIMINAR NULOS
# --------------------------------------------------------------

# Eliminar todas las filas que contengan algun valor nulo (forma simple)
datos2 <- na.omit(datos)

head(datos2, n=10)



# Eliminar filas con nulos en una columna concreta Ejemplo columna "id"
datos2 <- datos[!is.na(datos$id),]

head(datos2, n=10)




