# Laboratorio SQL – Sistema de Ventas 1

Este laboratorio tiene como objetivo que los estudiantes practiquen consultas SQL utilizando la base de datos del sistema de ventas.

Los ejercicios están organizados de menor a mayor complejidad.

Las consultas deben realizarse utilizando **columnas específicas**, evitando el uso de `SELECT *`.

---

# Nivel 1 – Consultas básicas (SELECT / FROM)

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

# Nivel 2 – Filtros con WHERE, LIKE y BETWEEN

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

1. Clasificar los productos como "Barato", "Medio" o "Caro" según su precio.
2. Clasificar las ventas como "Venta baja", "Venta media" o "Venta alta" según su total.
3. Mostrar si un cliente tiene correo registrado o no.
4. Clasificar los movimientos de caja como "Ingreso" o "Egreso".
5. Clasificar productos según rango de precios definido por el estudiante.
6. Mostrar si un proveedor tiene teléfono registrado o no.
7. Clasificar ventas según el monto total de la compra.
8. Mostrar si un cliente tiene información adicional registrada.
9. Clasificar productos como "Impuesto alto" o "Impuesto bajo".
10. Clasificar ventas según el mes en que fueron realizadas.
11. Clasificar usuarios según su estado.
12. Mostrar si una sucursal tiene teléfono registrado.
13. Clasificar clientes según cantidad de compras realizadas.
14. Clasificar productos según si su precio está sobre o bajo el promedio.
15. Clasificar proveedores según su comuna.

---

# Nivel 6 – JOIN entre tablas

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