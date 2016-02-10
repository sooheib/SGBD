ALTER TABLE VEHICULES drop constraint SYS_C007085 ;
ALTER TABLE VEHICULES MODIFY REF_MODELE varchar2(30);
ALTER TABLE MODELES MODIFY REF_MODELE varchar2(30);
ALTER TABLE VEHICULES add  CONSTRAINT "FK_M" FOREIGN KEY ("REF_M") REFERENCES  "MODELES" ("REF_M")  ;

INSERT INTO VEHICULES  (Immatriculation,Ref_Modele,Date_Mise_Circulation,Kilometrage,Prix) VALUES (
 '1245Tunis99' ,'RC' ,	'03-14-2001', 	'155000', 	'10200'
);



INSERT INTO VEHICULES  (Immatriculation,Ref_Modele,Date_Mise_Circulation,Kilometrage,Prix) VALUES (
 '264Tunis142' 	'FF' ,	'02-11-2010' ,	'75000' 	,'19500'
);


INSERT INTO VEHICULES  (Immatriculation,Ref_Modele,Date_Mise_Circulation,Kilometrage,Prix) VALUES (
 '569Tunis122' ,	'PCC' ,	'09-02-2005' ,	'85250' ,	'15200'
);


INSERT INTO VEHICULES  (Immatriculation,Ref_Modele,Date_Mise_Circulation,Kilometrage,Prix) VALUES (
'1713Tunis154' ,	'FPE' ,	'08-10-2012' ,	'106000' ,	'21000'
);


-------------------------------

INSERT INTO MODELES  (Ref_Modele,Modele,Marque,Puissance) VALUES (
 'RC' ,	'Clio' ,	'Renault' ,	'5CH'
);

INSERT INTO MODELES  (Ref_Modele,Modele,Marque,Puissance) VALUES (
'PCC' ,	'206cc' ,	'Peugeot' ,	'5CH'
);

INSERT INTO MODELES  (Ref_Modele,Modele,Marque,Puissance) VALUES (
'FPE' ,	'Punto Evo' ,	'Fiat' ,	'4CH'
);

INSERT INTO MODELES  (Ref_Modele,Modele,Marque,Puissance) VALUES (
'FF' ,	'Fiesta' ,	'Ford' ,	'6CH'
);


---------------------------------

INSERT INTO PERSONNES  (CIN,Nom,Prenom,Email,Num_Tel) VALUES (
'03645148' ,	'Masmoudi' ,	'Ahmed' 	,'ahmed@ahmed.com'   , '70983123'
);



INSERT INTO PERSONNES  (CIN,Nom,Prenom,Email,Num_Tel) VALUES (
'07498662' ,	'Ayadi' ,	'Omar' 	,'omar@ahmed.com'   , Null
);


INSERT INTO PERSONNES  (CIN,Nom,Prenom,Email,Num_Tel) VALUES (
'07895624' ,	'Ben Chaabane' ,	'Mariem' 	,'mimi@ahmed.com'   , Null
);


INSERT INTO PERSONNES  (CIN,Nom,Prenom,Email,Num_Tel) VALUES (
'06784512' ,	'Bali' ,	'Imen' 	,'imen@ahmed.com'   , '72145870'
);


INSERT INTO PERSONNES  (CIN,Nom,Prenom,Email,Num_Tel) VALUES (
'04456641' ,	'Salhi' ,	'Ali' 	,'ahmed@ahmed.com'   , '70983145'
);


-------------------------------------

INSERT INTO ACQUISITIONS  (Immatriculation,CIN,Date_Debut,Date_Fin) VALUES (
'1245Tunis99' 	'03645148' 	'06-20-2007' 	'17-09-2010'
);


INSERT INTO ACQUISITIONS  (Immatriculation,CIN,Date_Debut,Date_Fin) VALUES (
'264Tunis142' ,	'07895624' ,	'01-11-2012' 	,null
);

INSERT INTO ACQUISITIONS  (Immatriculation,CIN,Date_Debut,Date_Fin) VALUES (
'1245Tunis99' ,	'03645148' ,	'06-20-2007' ,	'17-09-2010'
);

INSERT INTO ACQUISITIONS  (Immatriculation,CIN,Date_Debut,Date_Fin) VALUES (
'1245Tunis99' ,	'03645148' ,	'06-20-2007' 	,null
);

--------------------------------

INSERT INTO CONTRAT_VENTE  (Ref_Contrat,CIN,Immatriculation,Date_Vente,Prix_Vente) VALUES (
'C'||SEQ_REF.NEXTVAL ,	'03645148' ,	'1245Tunis99' ,	'20-06-2007' ,	'9600'
);

INSERT INTO CONTRAT_VENTE  (Ref_Contrat,CIN,Immatriculation,Date_Vente,Prix_Vente) VALUES (
'C'||SEQ_REF.NEXTVAL ,	'07895624' ,	'264Tunis142' ,	null 	,'19000'
);

INSERT INTO CONTRAT_VENTE  (Ref_Contrat,CIN,Immatriculation,Date_Vente,Prix_Vente) VALUES (
'C'||SEQ_REF.NEXTVAL ,	'04456641' 	, '1713Tunis154' ,	null ,	'20800'
);

INSERT INTO CONTRAT_VENTE  (Ref_Contrat,CIN,Immatriculation,Date_Vente,Prix_Vente) VALUES (
'C'||SEQ_REF.NEXTVAL ,	'04456641' 	, '1713Tunis154' ,	null ,	'20800'
 ,	'07498662' ,	'1245Tunis99' ,	'09-18-2010'  ,'8500'
);

------------------------------------------

1/Ajouter un nouvel attribut « Couleur » pour spécifier les véhicules.

ALTER TABLE VEHICULES ADD Couleur varchar2(30)

------------------------------------
2/Mettre à jour la couleur de la voiture ‘1713Tunis154’ à ‘BLEU’.

UPDATE VEHICULES
SET COULEUR='BLEU'
WHERE IMMATRICULATION='1713Tunis154';

------------------------------------
3/Diminuer de 300 le prix de vente de la voiture ‘1245Tunis99’ dont le propriétaire est
‘Masmoudi’.

update contrat_vente INNER JOIN PERSONNES on contrat_vente.CIN = PERSONNES.CIN
set prix_vente = prix_vente-300
where IMMATRICULATION like '1245Tunis99'

update contrat_vente c
set c.prix_vente = c.prix_vente-300
where c.IMMATRICULATION ='1245Tunis99' and c.CIN=(SELECT p.CIN
FROM PERSONNES p WHERE p.cin = c.cin and p.nom ='Masmoudi');
--------------------------------------
4/Supprimer tous les contrats de vente dont l’année de vente est inférieure à 2008
delete from contrat_vente where year(Date_Vente) < 2008 ;










