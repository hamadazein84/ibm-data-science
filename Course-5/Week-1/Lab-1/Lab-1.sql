-- task 1
create table "INSTRUCTOR "
(
	ins_id int not null 
		constraint "INSTRUCTOR _PK"
			primary key,
	lastname varchar(50) not null,
	firstname varchar(50) not null,
	city varchar(50),
	country char(2)
);



-- task 2
insert into "INSTRUCTOR " (INS_ID, LASTNAME, FIRSTNAME, CITY, COUNTRY)
VALUES (1, 'Ahuja', 'Rav', 'Toronto', 'CA');

-- task 3
insert into "INSTRUCTOR " (INS_ID, LASTNAME, FIRSTNAME, CITY, COUNTRY)
VALUES (2, 'Chong', 'Raul', 'Toronto', 'CA'),
       (3, 'Vasudevan', 'Hima', 'Chicago', 'US');

-- task 4
select * from "INSTRUCTOR ";

-- task 5 
select FIRSTNAME, LASTNAME, COUNTRY from "INSTRUCTOR " where CITY = 'Toronto' ;

--task 6 
update "INSTRUCTOR "
set CITY = 'Markham'
where INS_ID = 1 ;

--task 7
