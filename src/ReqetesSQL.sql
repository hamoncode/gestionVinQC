USE BD_GestionVinsQC

-- Request #1
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

-- Request #2 
-- afficher le nom des vins selon leurs producteurs en ordre alphab�tique

SELECT nom_vin, nom_producteur
FROM Vin v,Producteur p
WHERE v.id_producteur = p.id_producteur
ORDER BY nom_producteur

-- Request #3
-- les noms des distributeurs et des d�taillants qui ont fait des transactions.



-- Request #4 
-- les noms des distributeurs et des producteur qui ont fait des transactions.

-- Request #5 
-- les noms des producteurs qui ont fait affaire avec des distributeurs.