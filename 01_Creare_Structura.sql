create table Concurenti(
id_concurent number(5) primary key,
nume_concurent varchar2(255),
inaltime number(4,2),
data_nasterii date,
greutate number(4,2),
gen varchar2(10)
);

create table Locatii(
id_locatie number(5) primary key,
nume_locatie varchar2(255),
adresa varchar2(255),
cod_postal number(10),
oras varchar2(100),
capacitate_public number(20)
);


create table Concursuri(
id_concurs number(5) primary key,
nume_concurs varchar2(255),
data_concurs date,
taxa_inscriere number(4,2),
id_locatie number(5),
constraint fk_locatii foreign key (id_locatie) references Locatii(id_locatie)
);


create table Inscrieri(
id_inscriere number(5) primary key,
id_concurent number(5),
id_concurs number(5),
constraint fk_concurs foreign key(id_concurs) references Concursuri(id_concurs),
constraint fk_concurent foreign key(id_concurent) references Concurenti(id_concurent)
);

create table Tipuri_probe(
id_tip_proba number(5) primary key,
denumire_tip_proba varchar2(255)
);


create table Probe(
id_proba number(5) primary key,
id_tip_proba number(5),
varsta_minima number(5),
varsta_maxima number(5),
constraint fk_tipuri_probe foreign key(id_tip_proba) references Tipuri_probe(id_tip_proba)
);

create table Probele_concursului(
id_proba_concurs number(5) primary key,
id_concurs number(5),
id_proba number(5),
constraint fk_probe foreign key(id_proba) references Probe(id_proba),
constraint fk_concurs2 foreign key(id_concurs) references Concursuri(id_concurs)
);

create table Rezultate_concurs(
id_rezultat number(5) primary key,
id_inscriere number(5),
id_proba number(5),
timp_record number(5,3),
loc_obtinut varchar2(255),
constraint fk_inscriere foreign key(id_inscriere) references Inscrieri(id_inscriere),
constraint fk_probe_concurs foreign key(id_proba) references Probe(id_proba)
);


alter table Concurenti modify nume_concurent varchar2(255) not null;
alter table Concurenti modify data_nasterii date not null;
alter table Locatii modify adresa varchar2(255) not null;
alter table Concurenti add constraint check_inaltime check (inaltime>0 and inaltime<4);
alter table Concurenti disable constraint check_inaltime;

alter table Concurenti drop column greutate;
alter table Concurenti add greutate number(5,2);
