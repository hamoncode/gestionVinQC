USE BD_GestionVinsQC

-- Request #0
-- tester si les donn�es ont bien �t� entr�es

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


-- Requ�te #1
-- producteur qui on vendu plus que 5 types de vins



-- Requ�te #2 
-- afficher le nom des vins selon leurs producteurs en ordre alphab�tique

SELECT nom_vin, nom_producteur
FROM Vin v,Producteur p
WHERE v.id_producteur = p.id_producteur
ORDER BY nom_producteur

-- Requ�te #3
-- les noms des distributeurs et des d�taillants qui ont fait des transactions.

Select di.nom_distributeur , de.nom_detaillant, t.date, t.Prix
From Transactions t , Distributeur di , Detaillant de
Where t.id_distributeur = di.id_distributeur
And t.id_detaillant = de.id_detaillant

-- Requ�te #4 
-- pour le mois de juin seulement, lister les transactions de la SAQ 



-- Requ�te #5 
-- identifier le vin le plus populaire par le nombre de transactions



-- Requ�te #6 
-- Les vins du Quebec



-- Requ�te #7
-- compte de vins par type



-- Requ�te #8
-- cout moyen des transactions



-- Requ�te #9
-- nombre total de transactions pour un producteur



-- Requ�te #10
-- top 5 des vins les plus vieux



-- Requ�te #11
-- top 10 des transactions les plus r�centes



-- Requ�te #12
-- top 10 des transactions les plus payantes



-- Requ�te #13
-- nombre total de transactions pour un vin sp�cifique



-- Requ�te #14
-- nombre total de transactions de tous les vendeurs



-- Requ�te #15
-- transaction d�taill� avec nom des producteurs et nom vin



-- Requ�te #16
-- trouver le vin le plus profitable de toutes les transactions



-- Requ�te #17
-- top 3 des producteurs avec les plus de transactions



-- Requ�te #18
-- les vins qui n'ont pas �t� vendu



-- Requ�te #19
-- le distributeur qui a le plus grand nombre de transaction en moyenne



-- Requ�te #20
-- Analyser les tendances de vente mensuelles pour un vin sp�cifique


