drop database if exists servismobitela;
create database servismobitela;
use servismobitela;

create table korisnik(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    prezime varchar(50) not null,
    telefon varchar(50) not null,
    email varchar(100),
    usluga int not null
);

create table poslovnica(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    adresa varchar(100) not null,
    serviser int,
    korisnik int
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
    krajservisa datetime,
    korisnik int not null,
    serviser int not null
);

create table usluga(
    sifra int not null primary key auto_increment,
    ime varchar(50) not null,
    cijena decimal(18,2) not null,
    serviser int not null,
    korisnik int not null
);

create table servisusluga(
    usluga int not null,
    korisnik int not null
);


alter table poslovnica add foreign key (serviser) references serviser(sifra);
alter table poslovnica add foreign key (korisnik) references korisnik(sifra);

alter table servis add foreign key (korisnik) references korisnik(sifra);
alter table servis add foreign key (serviser) references serviser(sifra);

alter table usluga add foreign key (serviser) references serviser(sifra);
alter table usluga add foreign key (korisnik) references korisnik(sifra);

alter table servisusluga add foreign key (usluga) references usluga(sifra);
alter table servisusluga add foreign key (servis) references servis(sifra);

SELECT * FROM korisnik;

#describe korisnik

insert into korisnik(sifra,ime,prezime,telefon,email,usluga) values
(null,'Vedran','Bariæ','0913532244','vedranbaric@gmail.com',1),
(null,'Marko', 'Paviæ','0998877666','markopavic@gmial.com', 2),
(null, 'Mario', 'Horvat','098765432','mariohorvat@gmail.com',3);

#describe poslovnica

select * from poslovnica;

insert into poslovnica(sifra,ime,adresa,serviser,korisnik) values
(null,'Brzi Servis Osijek','Divaltova 155',1,2),
(null,'Brzi Servis Zagreb','Vukovarska Ulica 12',2,1),
(null,'Brzi Servis Split','Poljud 4',3,3);

#describe serviser

select * from serviser;

insert into serviser(sifra,ime,prezime,telefon,email,iban) values
(null,'Mario', 'Bariæ', '099883344','mariobaric@gmail.com', null),
(null,'Marko', 'Horvat', '099883333','markohorvat@gmail.com', null),
(null,'Vedran', 'Paviæ', '099883322','vedranpavic@gmail.com', null);

#describe servis

select * from servis;

insert into servis(sifra,startservisa,krajservisa,korisnik,serviser) values
(null,'2019-10-15 08:00:00','2019-10-15 09:23:00',2,3);

#describe usluga

select * from usluga ;

insert into usluga(sifra,ime,cijena,serviser,korisnik) values
(null,'Zamjena displaya', 799.99,2,1),
(null,'Zamjena baterije', 199.99,1,2),
(null,'Popravak usb utora ', 299.99,3,3);

#describe servisusluga

select * from servisusluga;

insert into servisusluga(servis,usluga)




















