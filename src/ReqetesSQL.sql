USE BD_GestionVinsQC

-- Request #0
-- tester si les données ont bien été entrées

Select *
From Vin

Select *
From Producteur

Select *
From Detaillant

Select *
From Distributeur

Select *
From Transactions


-- Requête #1
-- producteur qui on vendu plus que 3 types de vins

SELECT p.nom_producteur, COUNT(DISTINCT v.type_vin) AS compte_type_vin
FROM Producteur p
JOIN Vin v ON p.id_producteur = v.id_producteur
JOIN Transactions t ON t.id_vin = v.id_vin
WHERE t.prix > 0
GROUP BY p.nom_producteur
HAVING COUNT(DISTINCT v.type_vin) >= 2
ORDER BY p.nom_producteur;

-- Requête #2 
-- afficher le nom des vins selon leurs producteurs en ordre alphabétique

SELECT nom_vin, nom_producteur
FROM Vin v,Producteur p
WHERE v.id_producteur = p.id_producteur
ORDER BY nom_producteur

-- Requête #3
-- les noms des distributeurs et des détaillants qui ont fait des transactions.

Select di.nom_distributeur , de.nom_detaillant, t.date, t.Prix
From Transactions t , Distributeur di , Detaillant de
Where t.id_distributeur = di.id_distributeur
And t.id_detaillant = de.id_detaillant

-- Requête #4 
-- pour le mois de Juillet seulement, lister les transactions de la SAQ 

Select t.id_transactions , nom_distributeur, t.Prix
From Transactions t
JOIN Distributeur d ON t.id_distributeur = d.id_distributeur
WHERE nom_distributeur = 'SAQ'
AND MONTH(t.date) = 7

-- Requête #5 
-- identifier le vin le plus populaire par le nombre de transactions

SELECT TOP 1 v.nom_vin, COUNT(t.PRIX) nombre_transactions
From Transactions t
JOIN Vin v ON t.id_vin = v.id_vin
GROUP BY v.nom_vin
ORDER BY nombre_transactions DESC

-- Requête #6 
-- Les vins du Quebec les plus vieux

SELECT v.nom_vin , v.millesime_vin
FROM Vin v
JOIN Producteur p ON v.id_producteur = p.id_producteur
WHERE region_producteur = 'QC'


-- Requête #7
-- compte de vins par type

SELECT type_vin , COUNT(*) compte_de_vin
FROM Vin
GROUP BY type_vin


-- Requête #8
-- cout moyen des transactions

SELECT AVG(Prix) AS moyenne_prix
FROM Transactions 

-- Requête #9
-- nombre total de transactions pour un producteur

SELECT p.nom_producteur , COUNT(t.id_transactions) AS nombre_transactions
FROM Transactions t
JOIN Producteur p ON t.id_producteur = p.id_producteur
GROUP BY nom_producteur

-- Requête #10
-- top 5 des vins les plus vieux 

SELECT TOP 5 v.nom_vin , v.millesime_vin
FROM Vin v
ORDER BY millesime_vin 

-- Requête #11
-- top 10 des transactions les plus récentes

SELECT TOP 10 id_transactions, DATEDIFF(DAY, date, GETDATE()) AS difference_jour
FROM Transactions
ORDER BY date DESC;

-- Requête #12
-- top 10 des transactions les plus payantes

SELECT TOP 10 id_transactions, PRIX 
FROM Transactions
ORDER BY PRIX DESC

-- Requête #13
-- nombre total de transactions pour un vin spécifique

SELECT v.nom_vin, t.Prix, COUNT(t.id_transactions) AS nombre_transaction
FROM Transactions t
JOIN Vin v ON v.id_vin = t.id_vin
GROUP BY v.nom_vin, t.Prix
ORDER BY nombre_transaction DESC;

-- Requête #14
-- nombre total de transactions de tous les vendeurs

SELECT id_producteur, id_distributeur, COUNT(id_transactions) AS nombre_transaction
FROM Transactions 
GROUP BY id_producteur, id_distributeur
ORDER BY nombre_transaction DESC;


-- Requête #15
-- transaction détaillé avec nom des producteurs et nom vin

SELECT p.nom_producteur , p.adresse_producteur , p.region_producteur, v.nom_vin, v.type_vin, v.millesime_vin
FROM PRODUCTEUR p
JOIN Vin v ON v.id_producteur = p.id_producteur
ORDER BY nom_producteur

-- Requête #16
-- trouver le vin le plus profitable de toutes les transactions

SELECT DISTINCT TOP 1 v.nom_vin , SUM(t.prix) AS somme_transactions
FROM Transactions t
JOIN VIN v ON v.id_vin = t.id_vin
GROUP BY v.nom_vin
ORDER BY somme_transactions DESC

-- Requête #17
-- top 3 des producteurs avec le plus de transactions

SELECT TOP 3 p.nom_producteur , COUNT(id_transactions) AS nombre_transactions
FROM Transactions t
JOIN Producteur p ON p.id_producteur = t.id_producteur
GROUP BY nom_producteur
ORDER BY nombre_transactions DESC

-- Requête #18
-- les vins qui n'ont pas été vendu

SELECT v.nom_vin
FROM Vin v
LEFT JOIN Transactions t ON v.id_vin = t.id_vin
WHERE t.id_vin IS NULL;

-- Requête #19
-- le distributeur qui a le plus grand nombre de transaction 

SELECT d.nom_distributeur , COUNT(t.id_transactions) AS nombre_transaction 
FROM Transactions t 
JOIN Distributeur d ON d.id_distributeur = t.id_distributeur
GROUP BY nom_distributeur


-- Requête #20
-- vente mensuelles pour un vin spécifique

SELECT FORMAT(t.date, 'yyyy-MM') AS mois, SUM(t.Prix) AS vente_du_mois
FROM Transactions t
WHERE t.id_vin = 48
GROUP BY FORMAT(t.date, 'yyyy-MM')
ORDER BY mois


