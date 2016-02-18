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
