CREATE TYPE choix_multiple AS ENUM ('staff', 'student', 'other');


create table ft_table (
	id_table bigserial NOT null PRIMARY KEY ,
	login VARCHAR(10) DEFAULT 'toto' NOT null,
    choix choix_multiple NOT null,
    date_de_creation DATE NOT null

);







