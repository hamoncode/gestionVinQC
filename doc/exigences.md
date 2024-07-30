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

Vin
  - numéro unique(pk)
  - nom
  - type (rouge,blanc,rosé,mousseux)
  - millésime
  - producteur (sk)

transactions
  - producteur (sk)
  - acheteur
  - vin (sk)
  - date 
  - prix

### restrictions

vente:
producteur -> distributeurs || détaillants

achat et ventes:
distributeurs -> détaillants || distributeurs || producteurs

achat:
détaillants -> distributeurs || producteurs

vente:
détaillants -> consommateurs
