# Laboratorio SQL – Sistema de Ventas 2

## Introducción

Este laboratorio tiene como objetivo que los estudiantes practiquen consultas SQL utilizando una base de datos que representa un **sistema de ventas tipo POS (Point of Sale)**.

La base de datos contiene información sobre:

- clientes
- productos
- proveedores
- inventario
- ventas
- caja
- usuarios del sistema

Los ejercicios están organizados de forma **progresiva**, aumentando gradualmente la complejidad de las consultas.

---

# Nivel 1 – Consultas básicas (SELECT / FROM)

En este nivel se busca familiarizar al estudiante con la estructura de las tablas y el uso de `SELECT` y `FROM`.  
Se debe **evitar el uso de `SELECT *`** y seleccionar únicamente las columnas solicitadas.

1. Mostrar el id, nombre y precio de todos los productos.
2. Mostrar el id y razón social de todos los clientes.
3. Mostrar el id, nombre y teléfono de todas las sucursales.
4. Mostrar el id y nombre de todas las categorías.
5. Mostrar el id, nombre y valor de todos los impuestos.
6. Mostrar el id, username y nombre de todos los usuarios del sistema.
7. Mostrar el id, fecha y total de todas las ventas registradas.
8. Mostrar el id_ticket, id_producto y cantidad de cada línea de venta.
9. Mostrar el id y razón social de todos los proveedores.
10. Mostrar el id, nombre y id_categoria de los productos.
11. Mostrar el id, monto y fecha de los movimientos de caja.
12. Mostrar el id_cliente y fecha de las ventas registradas.
13. Mostrar el id, nombre y dirección de los proveedores.
14. Mostrar el id y nombre de las comunas.
15. Mostrar el id y nombre de las regiones.

---

# Nivel 2 – Filtros (WHERE, LIKE y BETWEEN)

En este nivel el estudiante debe aplicar condiciones para filtrar los datos.

1. Mostrar los productos cuyo nombre contenga la palabra "pan".
2. Mostrar los clientes cuyo correo electrónico contenga "gmail".
3. Mostrar los productos cuyo precio esté entre 1000 y 5000.
4. Mostrar las ventas cuya fecha esté entre dos fechas específicas.
5. Mostrar los proveedores cuyo nombre comience con la letra "A".
6. Mostrar los clientes cuya razón social termine en "SPA".
7. Mostrar los productos cuyo precio sea mayor a 2000 y menor a 8000.
8. Mostrar los usuarios cuyo nombre contenga la palabra "admin".
9. Mostrar las sucursales cuyo nombre contenga la palabra "Centro".
10. Mostrar los movimientos de caja cuyo monto esté entre 1000 y 10000.
11. Mostrar los clientes cuyo teléfono contenga el número "9".
12. Mostrar los productos cuyo nombre comience con "C".
13. Mostrar las ventas cuyo total esté entre 5000 y 50000.
14. Mostrar los proveedores cuyo correo contenga "@empresa".
15. Mostrar los clientes cuya razón social contenga la palabra "Comercial".

---

# Nivel 3 – Ordenamiento, TOP y DISTINCT

Este nivel introduce el ordenamiento de resultados y la eliminación de duplicados.

1. Mostrar los 10 productos más caros.
2. Mostrar los 5 productos más baratos.
3. Mostrar los clientes ordenados alfabéticamente por razón social.
4. Mostrar las ventas ordenadas por fecha descendente.
5. Mostrar los productos ordenados por precio de mayor a menor.
6. Mostrar los nombres distintos de categorías existentes.
7. Mostrar los nombres distintos de comunas registradas.
8. Mostrar las 20 ventas con mayor total.
9. Mostrar los productos ordenados por nombre.
10. Mostrar los proveedores ordenados por razón social descendente.
11. Mostrar los primeros 15 clientes ordenados por id.
12. Mostrar los distintos valores de impuestos registrados.
13. Mostrar los movimientos de caja ordenados por monto descendente.
14. Mostrar las sucursales ordenadas por nombre.
15. Mostrar los distintos usuarios registrados en el sistema.

---

# Nivel 4 – Funciones de agregación (SUM, COUNT, AVG, GROUP BY)

En este nivel se utilizan funciones de agregación para analizar información.

1. Contar cuántos clientes existen en la base de datos.
2. Contar cuántos productos hay por categoría.
3. Calcular el precio promedio de los productos.
4. Calcular el total de ventas registradas en el sistema.
5. Calcular el total vendido por cada usuario.
6. Calcular el total vendido por cada cliente.
7. Calcular la cantidad total vendida de cada producto.
8. Mostrar cuántos proveedores existen por comuna.
9. Calcular el monto total registrado en movimientos de caja.
10. Mostrar la cantidad de ventas registradas por día.
11. Mostrar el precio promedio de productos por categoría.
12. Calcular el total vendido por cada sucursal.
13. Mostrar cuántos productos existen por proveedor.
14. Mostrar el monto promedio de las ventas registradas.
15. Calcular el total de productos vendidos en cada ticket.

---

# Nivel 5 – Uso de CASE

En este nivel se introducen expresiones condicionales.

1. Clasificar los productos como "Barato", "Medio" o "Caro" según su precio.
2. Clasificar las ventas como "Venta baja", "Venta media" o "Venta alta" según su total.
3. Mostrar si un cliente tiene correo registrado o no.
4. Clasificar los movimientos de caja como "Ingreso" o "Egreso".
5. Clasificar productos según rangos de precio definidos.
6. Mostrar si un proveedor tiene teléfono registrado o no.
7. Clasificar ventas según el monto total de la compra.
8. Mostrar si un cliente tiene información adicional registrada.
9. Clasificar productos según si aplican impuesto alto o bajo.
10. Clasificar ventas según el mes en que fueron realizadas.
11. Clasificar usuarios según su estado.
12. Mostrar si una sucursal tiene teléfono registrado.
13. Clasificar clientes según cantidad de compras realizadas.
14. Clasificar productos según si su precio está sobre o bajo el promedio.
15. Clasificar proveedores según su comuna.

---

# Nivel 6 – JOIN entre tablas

En este nivel se practican relaciones entre tablas.

1. Mostrar los productos junto con su categoría.
2. Mostrar los productos junto con su proveedor.
3. Mostrar los productos junto con el impuesto que aplican.
4. Mostrar las ventas junto con el nombre del cliente.
5. Mostrar las ventas junto con el usuario que las registró.
6. Mostrar el detalle de cada venta con el nombre del producto.
7. Mostrar los clientes junto con la comuna donde viven.
8. Mostrar las comunas junto con su provincia.
9. Mostrar las provincias junto con su región.
10. Mostrar los proveedores junto con su comuna.
11. Mostrar el stock de productos junto con la sucursal.
12. Mostrar el stock de productos junto con el nombre del producto.
13. Mostrar los movimientos de caja junto con el usuario que los registró.
14. Mostrar los movimientos de caja junto con la caja correspondiente.
15. Mostrar los productos vendidos junto con el nombre del cliente.
16. Mostrar las ventas junto con el total de productos vendidos.
17. Mostrar los productos vendidos junto con su categoría.
18. Mostrar los productos vendidos junto con su proveedor.
19. Mostrar los clientes junto con el total de ventas realizadas.
20. Mostrar los usuarios junto con la cantidad de ventas registradas.
21. Mostrar los productos junto con su categoría y proveedor.
22. Mostrar el detalle de ventas junto con el cliente y el producto.
23. Mostrar los productos vendidos junto con el impuesto aplicado.
24. Mostrar los movimientos de caja junto con el medio de pago utilizado.
25. Mostrar los productos vendidos junto con la sucursal donde se registró la venta.
26. Mostrar las ventas junto con la sucursal donde se realizaron.
27. Mostrar el stock de productos junto con su categoría.
28. Mostrar los productos vendidos junto con su categoría y cliente.
29. Mostrar las ventas junto con el cliente y el usuario que las registró.
30. Mostrar el detalle de ventas junto con producto, cliente y fecha de venta.

---

# Nivel 7 – Subconsultas

1. Mostrar los productos cuyo precio sea mayor al precio promedio de todos los productos.
2. Mostrar los clientes que han realizado al menos una venta.
3. Mostrar los productos que han sido vendidos al menos una vez.
4. Mostrar las ventas cuyo total sea mayor al promedio de todas las ventas.
5. Mostrar los clientes que tienen ventas registradas en el sistema.
6. Mostrar los productos cuyo precio sea mayor al precio mínimo registrado.
7. Mostrar los productos cuyo precio sea igual al precio máximo registrado.
8. Mostrar las ventas cuyo total sea mayor al promedio de ventas de un cliente específico.
9. Mostrar los clientes que han realizado compras superiores al promedio de ventas.
10. Mostrar los productos que tienen precio mayor al promedio de su categoría.
11. Mostrar las ventas realizadas por usuarios que tengan más de una venta registrada.
12. Mostrar los productos que no han sido vendidos.
13. Mostrar los clientes que no tienen ventas registradas.
14. Mostrar los productos cuyo precio esté sobre el promedio de su proveedor.
15. Mostrar los usuarios que han registrado ventas superiores al promedio general.

---

# Nivel 8 – HAVING

1. Mostrar las categorías que tengan más de 5 productos registrados.
2. Mostrar los clientes que hayan realizado más de 3 compras.
3. Mostrar los productos que se hayan vendido más de 10 veces.
4. Mostrar los usuarios que hayan registrado más de 5 ventas.
5. Mostrar los proveedores que tengan más de 3 productos asociados.
6. Mostrar las sucursales que tengan más de 10 productos en stock.
7. Mostrar los clientes cuyo total de compras supere los 50.000.
8. Mostrar los productos cuyo total vendido sea mayor a 100 unidades.
9. Mostrar los usuarios cuyo total de ventas supere los 200.000.
10. Mostrar las categorías cuyo precio promedio de productos sea mayor a 3000.
11. Mostrar los clientes cuyo promedio de compra sea mayor a 10.000.
12. Mostrar los productos cuya cantidad promedio vendida sea mayor a 5.
13. Mostrar los proveedores cuyo promedio de precio de productos sea mayor a 4000.
14. Mostrar los usuarios con más de 10 ventas registradas.
15. Mostrar los clientes que hayan comprado más de 3 productos distintos.

---

# Nivel 9 – IN y EXISTS

1. Mostrar los productos cuyo id esté presente en el detalle de ventas.
2. Mostrar los clientes cuyo id aparezca en la tabla de ventas.
3. Mostrar los productos que no aparezcan en ninguna venta.
4. Mostrar los clientes que no tengan compras registradas.
5. Mostrar los productos vendidos por clientes específicos.
6. Mostrar los usuarios que tengan ventas registradas.
7. Mostrar los proveedores cuyos productos hayan sido vendidos.
8. Mostrar los productos cuyo id esté dentro de los productos más vendidos.
9. Mostrar las ventas que contengan productos específicos.
10. Mostrar los clientes cuyo id esté en el conjunto de clientes con compras superiores a 10.000.
11. Mostrar los productos cuyo proveedor esté dentro de un conjunto específico.
12. Mostrar los productos que existan en el inventario de alguna sucursal.
13. Mostrar los clientes que tengan ventas en una fecha específica.
14. Mostrar los productos que no existan en el stock de ninguna sucursal.
15. Mostrar los proveedores cuyos productos existan en ventas registradas.

---

# Nivel 10 – CTE

1. Crear una CTE que calcule el total vendido por producto.
2. Utilizar una CTE para obtener el total de ventas por cliente.
3. Crear una CTE que calcule el precio promedio de productos.
4. Crear una CTE que calcule la cantidad de ventas por usuario.
5. Crear una CTE que calcule el total vendido por categoría.
6. Crear una CTE que calcule el total vendido por sucursal.
7. Crear una CTE que calcule el total de productos vendidos.
8. Crear una CTE que calcule el promedio de ventas por cliente.
9. Crear una CTE que calcule el total de ventas por día.
10. Crear una CTE que calcule el total vendido por proveedor.
11. Crear una CTE que calcule el total de ventas por mes.
12. Crear una CTE que calcule el total de productos vendidos por categoría.
13. Crear una CTE que calcule el total de ventas por usuario.
14. Crear una CTE que calcule el total de ventas por cliente y producto.
15. Crear una CTE que calcule el total de ventas por categoría y mes.

---

# Nivel 11 – Window Functions

1. Mostrar las ventas junto con un ranking según el total vendido.
2. Mostrar los productos ordenados por precio con un ranking.
3. Mostrar el total acumulado de ventas por fecha.
4. Mostrar el total acumulado de ventas por cliente.
5. Mostrar el ranking de productos más vendidos.
6. Mostrar el ranking de clientes según total comprado.
7. Mostrar el ranking de usuarios según total vendido.
8. Mostrar el promedio de ventas por cliente utilizando funciones de ventana.
9. Mostrar el total acumulado de productos vendidos.
10. Mostrar la venta anterior y la venta actual de cada cliente.
11. Mostrar el total de ventas por cliente junto al total general.
12. Mostrar el ranking de ventas dentro de cada sucursal.
13. Mostrar el ranking de productos dentro de cada categoría.
14. Mostrar el total acumulado de ventas por mes.
15. Mostrar el promedio móvil de ventas.

---

# Nivel 12 – Análisis de negocio

1. Identificar los productos más vendidos del sistema.
2. Identificar los clientes que más compran.
3. Identificar las categorías con mayor volumen de ventas.
4. Identificar los proveedores con más productos vendidos.
5. Identificar los usuarios que registran más ventas.
6. Identificar las sucursales con mayor volumen de ventas.
7. Identificar los productos con mayor ingreso generado.
8. Identificar los clientes que han comprado más productos distintos.
9. Identificar los meses con mayor volumen de ventas.
10. Identificar los días con mayor número de ventas.
11. Identificar los productos con menor rotación.
12. Identificar los clientes que no han comprado en el último periodo.
13. Identificar los proveedores cuyos productos generan mayores ingresos.
14. Identificar los productos cuyo precio está por sobre el promedio.
15. Identificar las categorías con menor número de productos vendidos.