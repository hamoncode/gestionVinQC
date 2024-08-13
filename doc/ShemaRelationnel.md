# Shéma relationnel 

légende: #clé_primaire %clé_étrangère

Producteur (
    #id_producteur,
    nom,
    adresse,
    region
)

Distributeur (
    #id_distributeur,
    nom,
    adresse,
    region
)

Detaillant (
    #id_detaillant,
    nom,
    adresse,
    region
)

Vin (
    #id_vin,
    nom,
    type,
    millesime,
    %producteur
)

transaction (
    #id_transaction,
    %id_producteur,
    %id_distributeur,
    %id_detaillant,
    %id_vin,
    date,
    prix,
)