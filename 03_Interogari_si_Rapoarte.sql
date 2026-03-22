update Concurenti
set inaltime=1.60, greutate=59
where id_concurent=51;

update Concursuri
set id_locatie=850
where nume_concurs in('Marea Competitie de Atletism', 'Cupa Tinerelor Talente la Atletism');

update Rezultate_concurs
set timp_record=1.80, loc_obtinut='Locul 1'
where id_inscriere = 2 and id_proba=3;

update Concursuri 
set taxa_inscriere=29.99
where id_concurs=121;

drop table rezultate_concurs;

flashback table rezultate_concurs to before drop;


select Concurenti.id_concurent, Concurenti.nume_concurent, count(Rezultate_concurs.id_rezultat) as medalii_aur
from Concurenti, Rezultate_concurs, Inscrieri
where Concurenti.id_concurent=Inscrieri.id_concurent
and Inscrieri.id_inscriere=Rezultate_concurs.id_inscriere
and rezultate_concurs.loc_obtinut='Locul 1'
group by 
Concurenti.id_concurent, Concurenti.nume_concurent
order by medalii_aur desc;


select 'Concurentul ' ||  upper(nume_concurent) || ' are inaltimea de ' || inaltime ||' si greutatea de ' || round(greutate,0) 
from Concurenti;

update Concursuri 
set data_concurs=to_date('25-03-2026', 'DD-MM-YYYY')
where id_concurs=123;


update Concursuri 
set data_concurs=to_date('20-06-2023', 'DD-MM-YYYY')
where id_concurs=129;


select avg(taxa_inscriere) as taxa_medie
from concursuri
where data_concurs>to_date('31-12-2024', 'DD-MM-YYYY');


select id_concurent, nume_concurent, trunc(months_between(sysdate, data_nasterii)/12, 0) as varsta,
case when trunc(months_between(sysdate, data_nasterii)/12, 0) between 5 and 14 then 'Copii'
when trunc(months_between(sysdate, data_nasterii)/12, 0) between 15 and 18 then 'Juniori'
when trunc(months_between(sysdate, data_nasterii)/12, 0) between 19 and 50 then 'Adulti'
when trunc(months_between(sysdate, data_nasterii)/12, 0) between 51 and 99 then 'Seniori'
else 'Nedefinit' end as categorie
from concurenti

order by 
case when trunc(months_between(sysdate, data_nasterii)/12, 0) between 5 and 14 then 1
when trunc(months_between(sysdate, data_nasterii)/12, 0) between 15 and 18 then 2
when trunc(months_between(sysdate, data_nasterii)/12, 0) between 19 and 50 then 3
when trunc(months_between(sysdate, data_nasterii)/12, 0) between 51 and 99 then 4
else 5 end,
varsta
;

select c.nume_concurent
from Concurenti c
left join Inscrieri i on c.id_concurent = i.id_concurent
left join Rezultate_concurs r on i.id_inscriere = r.id_inscriere
where r.id_rezultat IS NULL;


select i.id_concurs, c.nume_concurs, count(*) as numar_concurenti
from Inscrieri i, Concursuri c
where i.id_concurs=c.id_concurs
group by i.id_concurs, c.nume_concurs
having count(*) >= 2;


(select id_concurent 
from Inscrieri
where id_concurs=121
minus
select id_concurent 
from Inscrieri
where id_concurs=123)

union

(select id_concurent 
from Inscrieri
where id_concurs=123
minus
select id_concurent 
from Inscrieri
where id_concurs=121);

select c.id_concurent, c.nume_concurent, NVL(r.loc_obtinut, 'Nu a obtinut loc') as rezultat
from Concurenti c
left join Inscrieri i on c.id_concurent=i.id_concurent
left join Rezultate_concurs r on i.id_inscriere=r.id_inscriere
where i.id_concurs=124;

select c.id_concurent, c.nume_concurent,
DECODE(r.loc_obtinut,'Locul 1', 'Aur', 'Locul 2', 'Argint', 'Locul 3', 'Bronz','Nu a obtinut medalie') as medalie
from Concurenti c
left join Inscrieri i on c.id_concurent=i.id_concurent
left join Rezultate_concurs r on i.id_inscriere=r.id_inscriere
order by medalie;

alter table Concurenti modify data_nasterii date null;
insert into Concurenti values(61, 'Florescu Anton', 1.84, null, 'Masculin', 98.25);
insert into Concurenti values(62, 'Antonio Mario', 1.98, null, 'Masculin', 69.80);

select id_concurent, nume_concurent, NVL2(data_nasterii, 'Data valida', 'Data necompletata') as status_data_nastere
from Concurenti;


update Concurenti
set data_nasterii= to_date('25-09-1999', 'DD-MM-YYYY')
where id_concurent=54;

select nume_concurent, trunc(months_between(sysdate, data_nasterii)/12, 0) as varsta
from Concurenti 
where trunc(months_between(sysdate, data_nasterii)/12, 0)= 
(select max(trunc(months_between(sysdate, data_nasterii)/12, 0)) 
from concurenti
);

select id_concurs, nume_concurs, taxa_inscriere
from concursuri
where taxa_inscriere>=20;

select i.id_concurs, c.nume_concurs, sum(c.taxa_inscriere) as venit
from Inscrieri i, Concursuri c
where i.id_concurs=c.id_concurs
group by i.id_concurs, c.nume_concurs;


select c.nume_concurent, r.loc_obtinut, co.nume_concurs
from Concurenti c, Concursuri co, Rezultate_concurs r, Inscrieri i
where c.id_concurent=i.id_concurent 
and i.id_inscriere=r.id_inscriere and i.id_concurs=co.id_concurs
and r.loc_obtinut='Locul 1' and extract (year from co.data_concurs)=2023;


select nume_locatie, capacitate_public
from Locatii
where capacitate_public>10000
order by capacitate_public;


select nume_concurs
from Concursuri 
where id_concurs in(
select id_concurs 
from Inscrieri
where id_concurent=(
select id_concurent
from Concurenti
where data_nasterii=(select max(data_nasterii) 
from Concurenti)
)
);


select AVG(trunc(months_between(sysdate, data_nasterii)/12, 0)) as varsta_medie
from Concurenti;



select pc.id_proba_concurs, t.denumire_tip_proba, p.varsta_minima, p.varsta_maxima
from Probele_concursului pc, Tipuri_probe t, Probe p, Concursuri c
where
pc.id_proba=p.id_proba and
p.id_tip_proba=t.id_tip_proba and
pc.id_concurs=c.id_concurs and
c.nume_concurs='Campionatul de Atletism al Municipiului';

select c.nume_concurs, pc.id_proba_concurs, t.denumire_tip_proba, p.varsta_minima, p.varsta_maxima
from Probele_concursului pc, Tipuri_probe t, Probe p, Concursuri c
where
pc.id_proba=p.id_proba and
p.id_tip_proba=t.id_tip_proba and
pc.id_concurs=c.id_concurs and
p.varsta_minima<=11 and p.varsta_maxima>=11;
