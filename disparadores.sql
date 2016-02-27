/*
create table xxx(id_xxx integer,
                 edad integer); 

*/
/*create or replace trigger xxx_mayor_amyor_de_edad before insert on xxx for each row--declaracion del procedimiento
begin
if :new.edad < 18 then
raise_application_error(-20001, 'lo sieto chamaco precoz, te la pelaste "literal"');
end if;
end;
/

insert into xxx values (1,20);

insert into xxx values (1,10);
select * from xxx;
*/
  
  --create table nomina_xxx (id_nomina integer,
    --                       login varchar2(10),
      --                     saldo integer);
                           
create or replace trigger actualizar_saldo before update on nomina_xxx for each row
begin
:new.saldo:=:new.saldo+:old.saldo;
end;
/
                  

