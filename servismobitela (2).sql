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
alter table servisusluga add foreign key (korisnik) references korisnik(sifra);
















