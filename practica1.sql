--crearemos una tabla muy simple para probar el poder de pl sql
create table dance(id_dance integer, nombre varchar2(40), edad integer);
--prenderemos el servidor en modo de desarrollador
set serveroutput on;
--vamos a empezar con un bloque pl sql
declare 
--aqui se declaran las variables a usarse
edad integer;
years integer;
begin
--aqui se pone la logica del programa
years:=23;
edad:=years*365;
dbms_output.put_line('tu edad en dias es '||edad);
end;
/
--crear un bloque pl squl que genere 200,000 registros en secuencia ascendente en la tabla dance 
BEGIN
  FOR I IN 1..200000 LOOP
    INSERT INTO DANCE VALUES(I, 'AVILA', 23);
    
    END LOOP;
    END;
    /
--HACEMOS UN DELECT PARA VER QUE DIABLOS HIZO


SELECT * FROM DANCE;

--sistema de peliculas, sala sera de tarea

create table pelicula (id_pelicula integer,
                        titulo varchar2(120),
                        sinopsis varchar2(500),
                        clasificacion varchar2(5),
                        constraint pk_id_pelicula primary key(id_pelicula));
                        
                        describe pelicula;
                        
create table horarios(id_horario integer,
                      id_pelicula integer,
                      hprario varchar2(8),
                      constraint pk_id_horario primary key(id_horario),
                      constraint fk1_id_pelicula foreign key(id_pelicula) references pelicula(id_pelicula));
                      
                      describe horarios;
                      
                      
                        

