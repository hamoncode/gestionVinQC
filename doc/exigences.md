# documentation de définition des exigences

## le problème

but : créer base de données pour gérer efficacement les informations:

- producteurs de vin (provinces canadiennes)
- type de vin produits
- transactions de vente des vins

## exigences

### entité-relations

producteurs de vin
  - numéro unique(pk)
  - nom
  - adresse
  - région

Distributeur de vin
  - numéro unique(pk)
  - nom 
  - adresse
  - région

Détaillant de vin 
  - Numéro unique(pk)
  - nom
  - adresse
  - région

Vin
  - numéro unique(pk)
  - nom
  - type (rouge,blanc,rosé,mousseux)
  - millésime
  - producteur (sk)

transactions
  - numéro unique (pk)
  - producteur (sk)
  - distributeur (sk)
  - détaillant (sk)
  - vin (sk)
  - date 
  - prix

#### option ignoré

Acheteur
  - numéro unique(pk)
  - type (détaillant ou distributeur)
  - numéro de référence (sk)

transaction
  - distributeur,détaillant -> acheteur (sk)

##### explications

- j'ai choisi de ne pas prendre cette option parce que la bd ne va pas évoluer dans le temps.
- Or, dans un projet à long terme ou on à besoin d'une base de donnée plus flexible, j'aurais pris cette option.

### restrictions

vente:
producteur -> distributeurs || détaillants

achat et ventes:
distributeurs -> détaillants || distributeurs || producteurs

achat:
détaillants -> distributeurs || producteurs

vente:
détaillants -> consommateurs
