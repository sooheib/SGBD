CREATE TABLE MODELES
(
Ref_Modele int,
Modele varchar(255) NOT NULL,
Marque varchar(255) NOT NULL ,
Puissance varchar(255) CHECK(Puissance IN ('4CH','5CH','6CH')),
PRIMARY KEY (Ref_Modele)
)

CREATE TABLE PERSONNES(
CIN int,
Nom varchar(255),
Prenom varchar(255),
Email varchar(255) UNIQUE,
Num_Tel int UNIQUE,
PRIMARY KEY (CIN)    
)

CREATE TABLE VEHICULES (
Immatriculation varchar(255),
Date_Mise_Circulation DATE NOT NULL,
Kilometrage  NUMBER(38) NOT NULL,
Prix  NUMBER(38) NOT NULL,
Ref_Modele int,
PRIMARY KEY (Immatriculation),
FOREIGN KEY (Ref_Modele) REFERENCES MODELES(Ref_Modele)
)

CREATE TABLE ACQUISITIONS(
Immatriculation varchar(255),
CIN int,
Date_Debut DATE,
Date_Fin DATE ,
FOREIGN KEY (Immatriculation) REFERENCES VEHICULES(Immatriculation),
FOREIGN KEY (CIN) REFERENCES PERSONNES(CIN),
PRIMARY KEY (Immatriculation,CIN),
CHECK(Date_Fin>Date_Debut)
)


CREATE TABLE CONTRAT_VENTE(
CIN int,
Immatriculation varchar(255),
Ref_Contrat int NOT NULL,
Date_Vente DATE DEFAULT SYSDATE,
Prix_Vente NUMBER(38) UNIQUE,
FOREIGN KEY (Immatriculation) REFERENCES VEHICULES(Immatriculation),
FOREIGN KEY (CIN) REFERENCES PERSONNES(CIN),
PRIMARY KEY (Ref_Contrat,Immatriculation,CIN)
)
