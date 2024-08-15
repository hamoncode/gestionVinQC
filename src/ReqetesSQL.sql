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
-- Les vins du Quebec



-- Requête #7
-- compte de vins par type



-- Requête #8
-- cout moyen des transactions



-- Requête #9
-- nombre total de transactions pour un producteur



-- Requête #10
-- top 5 des vins les plus vieux



-- Requête #11
-- top 10 des transactions les plus récentes



-- Requête #12
-- top 10 des transactions les plus payantes



-- Requête #13
-- nombre total de transactions pour un vin spécifique



-- Requête #14
-- nombre total de transactions de tous les vendeurs



-- Requête #15
-- transaction détaillé avec nom des producteurs et nom vin



-- Requête #16
-- trouver le vin le plus profitable de toutes les transactions



-- Requête #17
-- top 3 des producteurs avec les plus de transactions



-- Requête #18
-- les vins qui n'ont pas été vendu



-- Requête #19
-- le distributeur qui a le plus grand nombre de transaction en moyenne



-- Requête #20
-- Analyser les tendances de vente mensuelles pour un vin spécifique


