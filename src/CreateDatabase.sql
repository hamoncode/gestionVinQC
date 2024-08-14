
DROP DATABASE IF EXISTS BD_GestionVinsQC

CREATE DATABASE BD_GestionVinsQC

GO

Use BD_GestionVinsQC

CREATE TABLE Producteur
(id_producteur SMALLINT CONSTRAINT PK_producteur PRIMARY KEY,
nom_producteur VARCHAR(50),
adresse_producteur VARCHAR(50),
region_producteur CHAR(3) NULL
)

CREATE TABLE Distributeur
(id_distributeur SMALLINT CONSTRAINT PK_distributeur PRIMARY KEY,
nom_distributeur VARCHAR(50),
adresse_distributeur VARCHAR(50),
region_distributeur CHAR(3) NULL
)

CREATE TABLE Detaillant
(id_detaillant SMALLINT CONSTRAINT PK_detaillant PRIMARY KEY,
nom_detaillant VARCHAR(50),
adresse_detaillant VARCHAR(50),
region_detaillant CHAR(3) NULL
)

CREATE TABLE Vin
(id_vin SMALLINT CONSTRAINT PK_vin PRIMARY KEY,
id_producteur SMALLINT CONSTRAINT FK_producteur1 FOREIGN KEY (id_producteur)
REFERENCES Producteur (id_producteur),
nom_vin VARCHAR(50),
type_vin VARCHAR(50),
millesime_vin INT
)

CREATE TABLE Transactions
(id_transactions SMALLINT CONSTRAINT PK_transactions PRIMARY KEY,
id_producteur SMALLINT CONSTRAINT FK_producteur2 FOREIGN KEY (id_producteur)
REFERENCES Producteur (id_producteur),
id_detaillant SMALLINT CONSTRAINT FK_detaillant FOREIGN KEY (id_detaillant)
REFERENCES Detaillant (id_detaillant),
id_distributeur SMALLINT CONSTRAINT FK_distributeur FOREIGN KEY (id_distributeur)
REFERENCES Distributeur (id_distributeur),
id_vin SMALLINT CONSTRAINT FK_vin FOREIGN KEY (id_vin)
REFERENCES Vin (id_vin),
date DATETIME,
Prix INT
)



