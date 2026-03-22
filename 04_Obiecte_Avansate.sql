
create or replace view v_concurenti_baieti as
select * from Concurenti 
where gen='Masculin';

create index idx_inaltime_greutate
on Concurenti (inaltime, greutate);


create sequence seq_probele_cconcursului
start with 11
increment by 1
nocycle;


create synonym competitii for concursuri;

select * from user_synonyms;
