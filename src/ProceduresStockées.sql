USE BD_GestionVinsQC

-- Procedure 1
-- Ajouter un nouveau vin uniquement is le producteur existe

CREATE PROCEDURE AjouterVin
    @id_producteur SMALLINT,
    @nom_vin VARCHAR(50),
    @type_vin VARCHAR(50),
    @millesime_vin INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Producteur WHERE id_producteur = @id_producteur)
    BEGIN
        BEGIN TRANSACTION;

        INSERT INTO Vin (id_producteur, nom_vin, type_vin, millesime_vin)
        VALUES (@id_producteur, @nom_vin, @type_vin, @millesime_vin);

        COMMIT;
    END
    ELSE
    BEGIN
        RAISERROR('aucun producteur', 16, 1);
    END
END;


-- Procedure 2
-- Mettre a jour les prix des transaction en applicants un pourcentage d'augmentation

CREATE PROCEDURE AugmenterPrixTransactions
    @pourcentage FLOAT
AS
BEGIN
    UPDATE Transactions
    SET Prix = Prix * (1 + @pourcentage / 100);
END;

-- Procedure 3
-- Supprimer un producteur et toutes les transactions qui lui sont reliés

CREATE PROCEDURE SupprimerProducteur
    @id_producteur SMALLINT
AS
BEGIN
    DELETE FROM Transactions WHERE id_producteur = @id_producteur;
    DELETE FROM Producteur WHERE id_producteur = @id_producteur;
END;


-- Procedure 4
-- Calculer les totaux de vente pour chaque producteur en utilisant un curseur

CREATE PROCEDURE CalculerTotalVentesParProducteur
AS
BEGIN
    DECLARE @id_producteur SMALLINT;
    DECLARE @total FLOAT;
    DECLARE producteur_cursor CURSOR FOR
        SELECT DISTINCT id_producteur FROM Transactions;

    OPEN producteur_cursor;

    FETCH NEXT FROM producteur_cursor INTO @id_producteur;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        SELECT @total = SUM(Prix)
        FROM Transactions
        WHERE id_producteur = @id_producteur;

        INSERT INTO VentesParProducteur (id_producteur, total_ventes)
        VALUES (@id_producteur, @total);

        FETCH NEXT FROM producteur_cursor INTO @id_producteur;
    END

    CLOSE producteur_cursor;
    DEALLOCATE producteur_cursor;
END;


-- Procedure 5
-- Calculer la moyenne des prix de vente pour chaque type de vin et insérer les résultats dans une table

CREATE PROCEDURE MoyennePrix
AS
BEGIN
    INSERT INTO MoyennePrix(type_vin, moyenne_prix)
    SELECT v.type_vin, AVG(t.Prix) AS moyenne_prix
    FROM Transactions t
    JOIN Vin v ON t.id_vin = v.id_vin
    GROUP BY type_vin;
END;


-- Procedure 6
-- Envoyer une alerte lorsqu'une transaction dépasse 10000$

CREATE PROCEDURE AlerteTransaction
AS
BEGIN
    DECLARE @TransactionID SMALLINT;
    DECLARE @Prix INT;

    DECLARE transaction_cursor CURSOR FOR
        SELECT id_transactions, Prix
        FROM Transactions
        WHERE Prix > 2000;

    OPEN transaction_cursor;

    FETCH NEXT FROM transaction_cursor INTO @TransactionID, @Prix;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        PRINT 'Alerte : La transaction dépasse 10000$ ';
        FETCH NEXT FROM transaction_cursor INTO @TransactionID, @Prix;
    END

    CLOSE transaction_cursor;
    DEALLOCATE transaction_cursor;
END;
