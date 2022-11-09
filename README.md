# W3 Project - Building mySQL Data-base 

Descargo los archivos CSV y se exploran uno a uno.

Observando los archivos, elimino la columna de nulos que se encontraba en el archivo film.
Elimino la columna last_update ya que al crear la nueva base de datos considero que no aporta información.

En el DataFrame actor y en Old_hdd se unen el first name y last name en una única columna que se llama name.

Una vez hecho esto los archivos nuevos se vuelven a pasar a csv y se cargan en SQL.


Se realizan una serie de queries para modificar la tabla old_hdd en la cual incluimos actor_id y film_id para poder relacionarla con el resto de tablas, así mismo, se elimina el resto de datos ya que podemos obtenerlos mediante relaciones.


Una vez modificada la tabla y con todos  los datos cargados en SQL, se cambian los tipos de datos y se crean las relaciones entre las diferentes tablas dando como resultado lo siguiente:/Users/javi/Desktop/ironhack/Proyecto2/w3-database-project/images/Captura de Pantalla 2022-11-07 a las 18.58.49.png

Una vez que están las relaciones establecidas y todos los datos cargados se realizan las siguientes queries.

1. Idioma en el que esta cada película:
/Users/javi/Desktop/ironhack/Proyecto2/w3-database-project/images/Language.png

2. Género de cada película:
/Users/javi/Desktop/ironhack/Proyecto2/w3-database-project/images/category .png

3. Número de actores por película:
/Users/javi/Desktop/ironhack/Proyecto2/w3-database-project/images/Actor per movie .png

4. Basandome en los ratings decir si una película puede considerarse buena o mala:

/Users/javi/Desktop/ironhack/Proyecto2/w3-database-project/images/GOOD OR BAD.png

5. Basandome en la duración de la película decir si esta es corta o larga:

/Users/javi/Desktop/ironhack/Proyecto2/w3-database-project/images/LONG OR SHORT.png

6. Titulo de la película, fecha en la que fue alquilada y en la que fue devuelta:

/Users/javi/Desktop/ironhack/Proyecto2/w3-database-project/images/Rentals.png

7. Titulo de la película y tiempo que estuvo alquilada:

/Users/javi/Desktop/ironhack/Proyecto2/w3-database-project/images/rental_duration.png

8. Películas ordenadas según su coste de reemplazo:

/Users/javi/Desktop/ironhack/Proyecto2/w3-database-project/images/replacement cost .png

9.  Top 10 de las mejores películas dentro del genero Music:

/Users/javi/Desktop/ironhack/Proyecto2/w3-database-project/images/BEST 10.png

10. Media de la tasa de alquiler:

/Users/javi/Desktop/ironhack/Proyecto2/w3-database-project/images/mean.png