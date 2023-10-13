use SQLInfo;

create table Lehrer (name Char(20), vorname CHAR(20), lehr_nr INTEGER,
	fach CHAR(20), jahr smallint);
	
insert into Lehrer (name, vorname, lehr_nr, fach, jahr)
	values ('Controletti', 'Johnny', 100001, 'Physik', 2011);
insert into Lehrer values ('Doria', 'Andrea', 100002, 'Chemie', 2010);
insert into Lehrer values ('Ratlos', 'Rudi', 100003, 'Chemie', 2012);