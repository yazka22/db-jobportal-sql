create database banca;
use banca;
create table client
(id int auto_increment primary key,
nume char(20),
prenume char(20), 
adresa char(50)
);
create table cont
(id int auto_increment primary key,
client_id int,
cod int, 
valoare float,
foreign key(client_id) references client(id)
);
create table tip_operatiune
(id int auto_increment primary key,
nume char(40)
);
create table tranzactie_cont
(id int auto_increment primary key,
cont_sursa_id int,
cont_destinatie_id int, 
tip int,
data date,
timp time,
valoare float,
detaliu char(20),
foreign key(cont_sursa_id) references cont(id),
foreign key(cont_destinatie_id) references cont(id),
foreign key(tip) references tip_operatiune(id)
);

insert into tip_operatiune(nume)
values
('Deschidere cont'),
('Inchidere cont'),
('Transfer intre conturi'),
('Depunere ghiseu'),
('Depunere ATM'),
('Extragere ghiseu'),
('Extragere ATM'),
('Balanta cont'),
('Istoric tranzactii'),
('IR-ERR: cont creditor insuficient');
insert into client(nume, prenume,adresa)
values
('Popa','Ion','Str. Mare, Dabuneli, Ilfov'),
('Popescu','Maria','Blvd. Primaverii, Bucuresti'),
('Andreescu','Victor','Blvd. Iuliu Maniu, bUcuresti'),
('Predescu','Andreea','Str. Virtutii, Baia Mare'),
('Ionescu','Mihaela','Str. Visinilor, Bucuresti'),
('Dinu','Cornel','Calea Victoriei, Bucuresti'),
('Vodafone','S.A.','Bucuresti'),
('Romtelecom','S.A.','Bucuresti');