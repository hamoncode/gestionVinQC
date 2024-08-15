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


-- REQUEST #1
-- producteur qui on vendu plus que 5 types de vins



-- Request #2 
-- afficher le nom des vins selon leurs producteurs en ordre alphabétique

SELECT nom_vin, nom_producteur
FROM Vin v,Producteur p
WHERE v.id_producteur = p.id_producteur
ORDER BY nom_producteur

-- Request #3
-- les noms des distributeurs et des détaillants qui ont fait des transactions.

Select di.nom_distributeur , de.nom_detaillant, t.date, t.Prix
From Transactions t , Distributeur di , Detaillant de
Where t.id_distributeur = di.id_distributeur
And t.id_detaillant = de.id_detaillant

-- Request #4 
-- pour le mois de juin seulement, lister les transactions de la SAQ 



-- Request #5 
-- identifier le vin le plus populaire par le nombre de transactions



-- Request #6 
-- Les vins du Quebec



-- Request #7
-- compte de vins par type



-- Request #8
-- cout moyen des transactions



-- Request #9
-- nombre total de transactions pour un producteur



-- Request #10
-- top 5 des vins les plus vieux



-- Request #11
-- top 10 des transactions les plus récentes



-- Request #12
-- top 10 des transactions les plus payantes



-- Request #13
-- nombre total de transactions pour un vin spécifique



-- Request #14
-- nombre total de transactions de tous les vendeurs



-- Request #15
-- transaction détaillé avec nom des producteurs et nom vin



-- Request #16
-- trouver le vin le plus profitable de toutes les transactions



-- Request #17
-- top 3 des producteurs avec les plus de transactions



-- Request #18
-- les vins qui n'ont pas été vendu



-- Request #19
-- le distributeur qui a le plus grand nombre de transaction en moyenne



-- Request #20
-- Analyser les tendances de vente mensuelles pour un vin spécifique


