1. Afficher les noms en majuscules, les prénoms en minuscule relatifs à toutes les
personnes enregistrés.
select UPPER(NOM) , LOWER(PRENOM) from PERSONNES
------------------------------------------------------------------
2. Afficher le total du kilométrage de tous les véhicules. Le résultat doit être arrondi.
select ROUND(SUM(KILOMETRAGE)) from VEHICULES
--------------------------------------------------------------------
3. Afficher tous les véhicules vendus pendant l’année dernière.
select * from VEHICULES where IMMATRICULATION in (  select IMMATRICULATION from CONTRAT_VENTE where EXTRACT(YEAR FROM DATE_VENTE) = (EXTRACT(YEAR FROM SYSDATE))-1)
--------------------------------------------------------------------

4. Afficher le nombre de véhicules vendus pendant le premier trimestre de l’année 2014.
select * from VEHICULES where IMMATRICULATION in (  select IMMATRICULATION from CONTRAT_VENTE where EXTRACT(month FROM DATE_VENTE) <4)
---
select (*)from vehicules inner join Contrat-vente on vehicule.Immatriculation=contrat-vente.immatriculation where extract....
---------------------------------------------------------------------
5. Afficher la liste des véhicules dont la date de possession ne dépasse pas 6 mois.
Select * from VEHICULES  where MONTHS_BETWEEN( SYSDATE, DATE_MISE_CIRCULATION )<7
----------------------------------------------------------------------
6. Afficher tous les véhicules dont la date de début de possession dépasse la date de
vente au plus de 4 jours.
select * from VEHICULES where IMMATRICULATION in (  select IMMATRICULATION from CONTRAT_VENTE where DATE_VENTE-(select DATE_MISE_CIRCULATION from VEHICULES )>4 )
-------------------------------------------------------------------------------------------
7. Afficher pour chaque véhicule son immatriculation, sa puissance fiscale et le tarif des
vignettes à payer. Le prix des vignettes est calculé en se basant sur la puissance fiscale
des véhicules :
- Si la puissance est inférieure ou égale à 4 CV alors le prix est 60D.
- Si la puissance est supérieure ou égale à 5 CV ou inférieure à 7CV alors le prix est
120D.
- Sinon le prix est 160D.
SELECT PUISSANCE,IMMATRICULATION,(
CASE
   WHEN PUISSANCE<='4' THEN 60
   WHEN PUISSANCE>='5' OR PUISSANCE<'7'  THEN 120
   ELSE 160
   END)
AS TARIF
from MODELES m
FULL JOIN VEHICULES v ON m.REF_MODELE=v.REF_MODELE
-------------------------------------------------
select v.immatriculation=m.puissance,
 case when (te-number(substr(m.puissance,0,1))<=4)
 then '60DT'
 when (m.puissance>='5ch'or m.puissance=<'7ch')
 then '170DT'
 else
 '120DT' end as
 "tarif"
 on vehicules v,modele m
-----------------------------------------------------------------------------