Question 1

create sequence seq_ref increment by 1 start with 104
-----------------------------------------------------------------------------------------------
Question 2


create or replace view vueveh as
select * from VEHICULES where Immatriculation IN  ( select  Immatriculation from CONTRAT_VENTE  where (prix_vente >10000) )
with read only
-----------------------------------------------------------------------------------------------
Question 3

create view vuevehdate as 
select * from VEHICULES where (trunc(Sysdate,'yyyy')-trunc(Date_Mise_Circulation,'yyyy')) > 3
with check option
------------------------------------------------------------------------------------------------
Question 4

create index prix on VEHICULES(prix)
