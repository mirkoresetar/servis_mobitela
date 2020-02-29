drop database if exists servismobitela;
create database servismobitela;
use servismobitela;

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    telefon varchar(50) not null,
    email varchar(100)
);

create table poslovnica(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    adresa varchar(100) not null
);

create table serviser(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    telefon varchar(50) not null,
    email varchar(100),
    iban varchar(100)
);

create table servis(
    sifra int not null primary key auto_increment,
    startservisa datetime,
    krajservisa datetime
);

create table usluga(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    cijena decimal(18,2) not null
);

create table servisusluga(
    usluga int not null,
    korisnik int not null
);




SELECT * FROM korisnik;


insert into korisnik(sifra,ime,prezime,telefon,email) values
(null,'Vedran','Bariæ','0913532244','vedranbaric@gmail.com'),
(null,'Marko', 'Paviæ','0998877666','markopavic@gmial.com'),
(null, 'Mario', 'Horvat','098765432','mariohorvat@gmail.com');


select * from poslovnica;

insert into poslovnica(sifra,ime,adresa) values
(null,'Brzi Servis Osijek','Divaltova 155'),
(null,'Brzi Servis Zagreb','Vukovarska Ulica 12'),
(null,'Brzi Servis Split','Poljud 4');

#describe serviser

select * from serviser;

insert into serviser(sifra,ime,prezime,telefon,email,iban) values
(null,'Mario', 'Bariæ', '099883344','mariobaric@gmail.com', null),
(null,'Marko', 'Horvat', '099883333','markohorvat@gmail.com', null),
(null,'Vedran', 'Paviæ', '099883322','vedranpavic@gmail.com', null);

#describe servis

select * from servis;

insert into servis(sifra,startservisa,krajservisa) values
(null,'2019-10-15 08:00:00','2019-10-15 09:23:00');

#describe usluga

select * from usluga ;

insert into usluga(sifra,ime,cijena) values
(null,'Zamjena displaya', 799.99),
(null,'Zamjena baterije', 199.99),
(null,'Popravak usb utora ', 299.99);





















