# USO DEL GGPLOT EN R
### Author: Jair Villanueva
### Curso: Ciencias de datos
Para visualizar el texto usa: crtl + shift + m
## CASO DE ESTUDIO: Heart Rate dataset
### *Instrucciones*:
*  **Paso 1:** Cargar los datos
* **Paso 2:** Cargar la librerias

    *Paso 2.1*: Revisar todo

*Nota*: Si no cuentas con las librerias debes descargalas usando
install.package(namepackge).

> Vamos entrar en detalles con el algoritmo de classificacion

```r
library(ggplot2)
library(hrbrthemes)
ggplot(iris, aes(x=Sepal.Length, y=Sepal.Width, alpha=Species)) +
    geom_point(size=6, color="#69b3a2") +
    theme_ipsum()
```

La gráfica anterior muestra un scatterplot de la base de la variable Sepal.With
y Sepal.Length del dataset de Iris.

---------------
[Link para un enlace web](https://youtube.com)

![Para incluir una image](https://th.bing.com/th/id/OIP.cv-0o3NRrSA75YNfM6z87AHaFm?pid=Api&w=740&h=560&rs=1)

Bueno hasta aqui llegamos
