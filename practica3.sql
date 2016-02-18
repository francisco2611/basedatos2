declare
cursor cur_empleados is select * from empleado_ventas;
cursor cur_suc is select * from sucursal;
begin
for rec_emp in cur_empleados loop
 for rec_suc in cur_suc loop
 if rec_emp.id_cliente=rec_suc.id_cliente then
dbms_output.put_line('nombre:' || rec_emp.nombre_cliente || '  sucursal: ' || rec_suc.nombre );
end if;
end loop;
end loop;
end;
/
select * from empleado_ventas;  
set serveroutput on;
SELECT EMPLEADO_VENTAS.ID_CLIENTE, EMPLEADO_VENTAS.NOMBRE_CLIENTE, SUCURSAL.NOMBRE FROM EMPLEADO_VENTAS JOIN SUCURSAL  ON EMPLEADO_VENTAS.ID_CLIENTE=SUCURSAL.ID_CLIENTE;

/*Elabora una consulta que obtenga el nombre del vendedor y las ventas realizadas por totales por dicho vendedor, 
por el total de las tiendas en las que esuvo. Debe haber una columna adicional donde debe apacer un campo premio,
el cual se obtiene con la siguiente formula premio= (sueldo base del trabajador + ventas totales)*0.15;
*/
declare
total integer;
cursor cur_empleados is select * from empleado_ventas;
cursor cur_suc is select * from sucursal;
begin
for rec_emp in cur_empleados loop
 for rec_suc in cur_suc loop
 if rec_emp.id_cliente=rec_suc.id_cliente then
 total:=rec_suc.venta+rec_suc.venta;
end if;
end loop;
dbms_output.put_line('nombre:' || rec_emp.nombre_cliente || '  total: ' || total );
end loop;
end;
/
select * from empleado_ventas;  
set serveroutput on;
SELECT EMPLEADO_VENTAS.ID_CLIENTE, EMPLEADO_VENTAS.NOMBRE_CLIENTE, SUCURSAL.NOMBRE FROM EMPLEADO_VENTAS JOIN SUCURSAL  ON EMPLEADO_VENTAS.ID_CLIENTE=SUCURSAL.ID_CLIENTE;
