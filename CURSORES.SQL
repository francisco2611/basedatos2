CREATE TABLE PAISES(ID_PAISES VARCHAR2(4),CREATE TABLE PAISES(ID_PAISES VARCHAR2(4),
                    NOMBRE VARCHAR2(100),
                    HABITANTES INTEGER,
                    IDIOMA VARCHAR2(40),
    CONSTRAINT PK_ID_PAIS PRIMARY KEY (ID_PAISES));
    
INSERT INTO PAISES VALUES('MX' ,'MEXICO',9000000,'ESPAÑOL');
INSERT INTO PAISES VALUES('USA', 'ESTADOS UNIDOS',120000000,'INGLES');
INSERT INTO PAISES VALUES('JPA', 'JAPON',180000000,'JAPONES');
INSERT INTO PAISES VALUES('GER' ,'ALEMANIA',140000000,'ALEMAN');
INSERT INTO PAISES VALUES('BRA' ,'BRASIL',23000000,'PORTUGUES');

create table estudiante(id_estudiante integer,
                        id_pais varchar2(4),
                        carrera varchar2(30),
                        edad integer,
                        constraint pk_id_estudiante primary key (id_estudiante),
                        CONSTRAINT fk_id_pais foreign key (id_pais) REFERENCES PAISES (ID_PAISES));
                        
insert into estudiante values (1145,'FRANCISCO','MX','SISTEMAS',23);                         
insert into estudiante values (1146,'BURELA','MX','SISTEMAS',22);   
insert into estudiante values (1147,'LEZAMA','JPA','MECATRONICA',23);   
insert into estudiante values (1148,'CAMPOS','GER','SISTEMAS',25);   
insert into estudiante values (1149,'FRANCISCO','MX','MEDICINA',27);   
insert into estudiante values (1150,'GUSTAVO','BRA','DERECHO',33);   

DECLARE 
CURSOR CUR_PAISES IS SELECT * FROM PAISES;
CURSOR CUR_EST IS SELECT * FROM ESTUDIANTE;
BEGIN
FOR FILA IN CUR_PAISES LOOP
FOR ESTU IN CUR_EST LOOP
DBMS_OUTPUT.PUT_LINE('NOMBRE: '||ESTU.ID_PAIS.NOMBRE || 'NOMBRE');

END LOOP;
END;
/
INSERT INTO PAISES VALUES('MX' ,'MEXICO',9000000,'ESPAÑOL');
create table estudiante(id_estudiante integer,
                        id_pais varchar2(4),
                        carrera varchar2(30),
                        edad integer,
                        constraint pk_id_estudiante primary key (id_estudiante),
                        CONSTRAINT fk_id_pais foreign key (id_pais) REFERENCES PAISES (ID_PAISES));
CREATE TABLE PAISES(ID_PAISES VARCHAR2(4),
                    NOMBRE VARCHAR2(100),
                    HABITANTES INTEGER,
                    IDIOMA VARCHAR2(40),
    CONSTRAINT PK_ID_PAIS PRIMARY KEY (ID_PAISES));

                    NOMBRE VARCHAR2(100),
                    HABITANTES INTEGER,
                    IDIOMA VARCHAR2(40),
    CONSTRAINT PK_ID_PAIS PRIMARY KEY (ID_PAISES));
    
INSERT INTO PAISES VALUES('MX' ,'MEXICO',9000000,'ESPAÑOL');
INSERT INTO PAISES VALUES('USA', 'ESTADOS UNIDOS',120000000,'INGLES');
INSERT INTO PAISES VALUES('JPA', 'JAPON',180000000,'JAPONES');
INSERT INTO PAISES VALUES('GER' ,'ALEMANIA',140000000,'ALEMAN');
INSERT INTO PAISES VALUES('BRA' ,'BRASIL',23000000,'PORTUGUES');

create table estudiante(id_estudiante integer,
                        id_pais varchar2(4),
                        carrera varchar2(30),
                        edad integer,
                        constraint pk_id_estudiante primary key (id_estudiante),
                        CONSTRAINT fk_id_pais foreign key (id_pais) REFERENCES PAISES (ID_PAISES));
                        
insert into estudiante values (1145,'FRANCISCO','MX','SISTEMAS',23);                         
insert into estudiante values (1146,'BURELA','MX','SISTEMAS',22);   
insert into estudiante values (1147,'LEZAMA','JPA','MECATRONICA',23);   
insert into estudiante values (1148,'CAMPOS','GER','SISTEMAS',25);   
insert into estudiante values (1149,'FRANCISCO','MX','MEDICINA',27);   
insert into estudiante values (1150,'GUSTAVO','BRA','DERECHO',33);   

DECLARE 
CURSOR CUR_PAISES IS SELECT * FROM PAISES;
CURSOR CUR_EST IS SELECT * FROM ESTUDIANTE;
BEGIN
FOR FILA IN CUR_PAISES LOOP
FOR ESTU IN CUR_EST LOOP
DBMS_OUTPUT.PUT_LINE('NOMBRE: '||ESTU.ID_PAIS.NOMBRE || 'NOMBRE');

END LOOP;
END;
/


