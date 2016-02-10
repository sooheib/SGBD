1. Afficher les informations sur tous les contrats de vente:
SELECT * FROM CONTRAT_VENTE;
-------------------------------------------------------------------------------------------------------------
2. Afficher la liste des véhicules disponibles par ordre croissant du prix demandé.
SELECT * FROM VEHICULES ORDER BY PRIX ASC;
-------------------------------------------------------------------------------------------------------------
3. Afficher la liste des véhicules qui ont dépassé 100000 kilomètres.
SELECT * FROM VEHICULES WHERE KILOMETRAGE > 10000;
-------------------------------------------------------------------------------------------------------------
4. Afficher la liste des véhicules dont le prix demandé est compris entre 7500 et 15000.
SELECT * FROM VEHICULES WHERE PRIX BETWEEN 7500 AND 1500 ;
-------------------------------------------------------------------------------------------------------------
5. Afficher la liste des modèles de véhicules ‘Peugeot’ et ‘Fiat’.
SELECT * FROM VEHICULES,MODELES WHERE MARQUE IN ('Peugeot','Fiat');
--------------------------------------------------------------------------------------------------------------
6. Afficher la liste des personnes dont la deuxième lettre de leurs nom est ‘b’ et la
dernière lettre de leur prénom est ‘a’.
SELECT * FROM PERSONNES	 WHERE  Nom LIKE '_b%' AND Prenom LIKE '%a' ;
--------------------------------------------------------------------------------------------------------------
7. Afficher tous les véhicules de couleur noir ou gris.
SELECT * FROM VEHICULES,MODELES WHERE COULEUR IN ('noir','gris')
8. Afficher la liste des modèles disponibles sans aucune indication sur la puissance.
--------------------------------------------------------------------------------------------------------------
SELECT * FROM  MODELES  WHERE PUISSANCE is Null
--------------------------------------------------------------------------------------------------------------
9. Faites le nécessaire pour avoir le résultat suivant :
SELECT  'vehicule de type: ' || REF_MODELE || ',1er date de mise en circulation le ' || DATE_MISE_CIRCULATION || ',Kilometres parcourus: ' || KILOMETRAGE || ',le prix demandé est: ' || PRIX || 'dinars'
as "Véhicules Disponibles"
FROM VEHICULES;

