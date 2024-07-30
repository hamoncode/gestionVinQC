CREATE DATABASE BD_GestionVinsQC


GO

Use BD_GestionVinsQC

CREATE TABLE auteur
(id_a SMALLINT CONSTRAINT PK_auteur PRIMARY KEY,
nom VARCHAR(20),
telephone CHAR(12),
ville VARCHAR(15),
province CHAR(3) NULL,
contrat bit)

CREATE TABLE editeur
(code_ed SMALLINT CONSTRAINT PK_editeur PRIMARY KEY,
nom_ed VARCHAR(20),
lieu VARCHAR(20))

CREATE TABLE livre
(id_livre	integer
		CONSTRAINT PK_livre PRIMARY KEY NONCLUSTERED,
	titre 		CHAR(20) NOT NULL,
	categorie		CHAR(15) NULL,
	code_ed		SMALLINT NOT NULL CONSTRAINT FK_Editeur REFERENCES editeur(code_ed),
	prix 		SMALLMONEY NOT NULL,
        droits         SMALLINT NOT NULL,
        date            DATETIME		
)

create table auteurLivre
(constraint pk_auteur_livre primary key (id_a, id_livre),
id_a smallint constraint fk_auteur references auteur (id_a),
id_livre integer constraint fk_livre references livre(id_livre),
ordre smallint,
part int
constraint ck_part
check (part < 20))

insert into auteur
values (10, 'Alain Dubuc', '819 734-8889', 'Hull', 'Qc', 0)

insert into auteur
values (20, 'Pierre Lebrun', '514 655-1750', 'Montreal', 'Qc', 0)
   
insert into auteur
values (30, 'Amina Missaoui', '418 678-3444', 'Quebec', 'Qc', 1)

insert into auteur
values (40, 'Brian Adams', '416 998-2345', 'Toronto', 'Ont', 1)
    
insert into auteur
values (50, 'Luc Nadeau', '506 877-4466', 'Moncton', 'Nb', 1)
                                                                                   
insert into auteur
values (60, 'Laks Agrawal', '416 888-9834', 'Toronto', 'Ont', 1)

insert into auteur
values (70, 'Michel Montignac', '331 678-5555', 'Paris', NULL, 0)

insert into auteur
values (80, 'C-J Date', '202 812-5675', 'Washington', 'Dc', 1)

insert into auteur
values (90, 'jacques Dupont', '331 876-0685', 'Paris', NULL, 1)
                          
insert into editeur
values (11, 'Gaetan Morin', 'Montreal')

insert into editeur
values (22, 'Addison Wesley', 'New York')

insert into editeur
values (33, 'Flammarion', 'Paris')

insert into editeur
values (44, 'Eyrolles', 'Paris')

insert into editeur
values (55, 'MS Press', 'Boston')		

/* ATTENTION: La date peut etre introduite sous forme mm/day/yy comme 06/17/87 ou sous forme jj-month-yy comme 07-may-98. En cas de probleme, on pourra executer la commande SET DATEFORMAT MDY */

insert into livre
values (1000, 'Menus quebecois', 'cuisine', 11, 20.99, 10, '06/17/87')

insert into livre
values (2000, 'SQL Server 6.5', 'informatique', 55, 65.00, 15, '04/21/95')

insert into livre
values (3000, 'Bases de donnees', 'informatique', 44, 57.99, 16, '02/04/98')

insert into livre
values (4000, 'Management', 'gestion', 44, 40.99, 15, '10/30/90')

insert into livre
values (5000, 'A guide to SQL', 'informatique', 22, 43.99, 20, '02/24/91')

insert into livre
values (6000, 'Je maigris', 'dietetique', 33, 8.99, 15, '01/15/99')

insert into auteurLivre
values (10, 1000, 1, 5)

insert into auteurLivre
values (10, 3000, 3, 17)

insert into auteurLivre
values (20, 1000, 2, 5)

insert into auteurLivre
values (40, 2000, 1, 15)

insert into auteurLivre
values (80, 3000, 1, 8)

insert into auteurLivre
values (90, 3000, 2, 7)

insert into auteurLivre
values (50, 4000, 1, 5)

insert into auteurLivre
values (30, 4000, 2, 5)

insert into auteurLivre
values (60, 4000, 3, 5)

insert into auteurLivre
values (80, 5000, 1, 13)

insert into auteurLivre
values (90, 2000, 2, 10)

insert into auteurLivre
values (70, 6000, 1, 15)