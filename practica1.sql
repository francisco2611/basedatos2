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
                      
create sequence sec_pelicula
start with 1
increment by 1
nomaxvalue;

/*nota del ejercicio anterior 
en oracle cuando no exista en la informacion de la entidad un primary key natural, deberas incluir uno autogenerado por oracle 
ejercicio: generar unaseccion en oracle para que lo enlacemos a la tabla pelicula y asi poder generar un primary key auto-incrementado
uansecuaencia es en oracle un objeto de base de datos:
otros objetos de base de datos:
tablas
disparadores
procedimientos almacenados
secuencias
el siguiente apso es enlazar la re4cien creada secuencia con la tabla pelicula
notra: solamente se puede asociar una secuencia a una sola tabla
para asociarla se necesita un nuevo objeto de base de datos este objeto va a ser el que insertara el o los nuevos registros en la tabla pelicula.
en resumen: jamas se usa un insert into en oracle cuando tienen un primary key auto-generado
que repercuciones tiene usar esta secuencia sql en ambientes distribuidos 
sql injection
este es el hacking mas dificil de erradicar/*

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
                   
create sequence sec_pelicula
start with 1
increment by 1
nomaxvalue;
  set serveroutput on; 
create or replace procedure hola_mundo(nombre in varchar2)
as
begin
--aqui va la logica
dbms_output.put_line('hola como estas '||nombre);
end;
/

begin
hola_mundo('francisco avila');
end;           
/

declare
valor number;
begin
suma(12,8,valor);
dbms_output.put_line('la suma es '||valor);
end;
/

