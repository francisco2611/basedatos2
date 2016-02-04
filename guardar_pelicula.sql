CREATE TABLE PELICULA (ID_PELICULA INTEGER,
                      TITULO VARCHAR2(120),
                      SINOPSIS VARCHAR2(500),
                      CALSIFICACION VARCHAR2(5),
                      CONSTRAINT PK_ID_PELICULA PRIMARY KEY( ID_PELICULA)
                      );
                      
                     DESCRIBE  PELICULA;
CREATE TABLE HORARIOS (ID_HORARIO INTEGER,
                       ID_PELICULA INTEGER,
                       HORARIO VARCHAR2(8),
                       CONSTRAINT PK_ID_HORARIO PRIMARY KEY(ID_HORARIO),
        CONSTRAINT FK1_ID_PELICULA FOREIGN KEY(ID_PELICULA) REFERENCES PELICULA(ID_PELICULA)
        );
        
        CREATE TABLE PELICULA (ID_PELICULA INTEGER,
                      TITULO VARCHAR2(120),
                      SINOPSIS VARCHAR2(500),
                      CALSIFICACION VARCHAR2(5),
                      CONSTRAINT PK_ID_PELICULA PRIMARY KEY( ID_PELICULA)
                      );
                      
                     DESCRIBE  PELICULA;
CREATE TABLE HORARIOS (ID_HORARIO INTEGER,
                       ID_PELICULA INTEGER,
                       HORARIO VARCHAR2(8),
                       CONSTRAINT PK_ID_HORARIO PRIMARY KEY(ID_HORARIO),
        CONSTRAINT FK1_ID_PELICULA FOREIGN KEY(ID_PELICULA) REFERENCES PELICULA(ID_PELICULA)
        );
        
        CREATE SEQUENCE SEC_PELICULA
         START WITH 1
         INCREMENT BY 1
         NOMAXVALUE;
         
         CREATE OR REPLACE PROCEDURE GUARDAR_PELICULA 
(
  MY_ID_PELICULA OUT NUMBER  
, MY_TITULO IN VARCHAR2  
, MY_SINOPSIS IN VARCHAR2  
, MY_CLASIFICACION IN VARCHAR2  
) AS 
BEGIN
  SELECT SEC_PELICULA.NEXTVAL INTO MY_ID_PELICULA FROM DUAL;
  INSERT INTO PELICULA VALUES(MY_ID_PELICULA, MY_TITULO,MY_SINOPSIS,
                                     MY_CLASIFICACION);
END GUARDAR_PELICULA;

declare
valor integer;
begin
guardar_pelicula(valor,'el renacido','esta pus mas o menos', 'b15');
end;
/

select * from pelicula;
/
