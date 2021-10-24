CREATE TABLE new_table(
	id_table_2 bigserial NOT null PRIMARY KEY ,
	login_2 VARCHAR(10)  DEFAULT 'toto' NOT null,
    choix_2 choix_multiple NOT null,
    date_de_creation_2 DATE NOT null
);


create or replace  FUNCTION  check_statues()   RETURNS trigger AS $table_trigger$
begin

       
        INSERT INTO new_table 
        SELECT (login,choix, date_de_creation)
        FROM ft_table;

end;
$table_trigger$ LANGUAGE plpgsql;




CREATE or replace TRIGGER table_trigger 
    BEFORE INSERT OR UPDATE ON new_table
    FOR EACH ROW
    WHEN  length(login_2) <10
    EXECUTE PROCEDURE check_statues() ;







;