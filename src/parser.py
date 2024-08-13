from bs4 import BeautifulSoup
import requests

#  API request
url = "https://www.saq.com/fr/produits/vin?origine_qc%5B0%5D=Pr%C3%A9par%C3%A9+au+Qu%C3%A9bec&origine_qc%5B1%5D=Origine+Qu%C3%A9bec&p=1&pays_origine=Canada"
response = requests.get(url)

# Beautifulsoup object
doc = BeautifulSoup(response.content, "html.parser")

print(doc.prettify())


# BUG : changer balise nom,type-vin, millesime, nom_producteur, adresse_producteur pour ceux du html du site

# # ouvrir fichier en mode écriture
# with open("InsererDonnées.sql", "w", encoding='utf-8') as file:

#     # données du vin
#     vins = soup.find_all("div", class_="product-list-item")
#     for vin in vins:
#         nom = vin.find("h3").get_text().strip()
#         type_vin = vin.find("span", class_="type").get_text().strip()  
#         millesime = vin.find("span", class_="millesime").get_text().strip()

#         # Creation querry INSERT INTO 
#         insert_query = f"INSERT INTO vin (nom, type, millesime) VALUES ('{nom}', '{type_vin}', '{millesime}');\n"
#         file.write(insert_query)

#     # données du producteur
#     producteurs = soup.find_all("div", class_="producteur-info") 
#     for producteur in producteurs:
#         nom_producteur = producteur.find("h4").get_text().strip()
#         adresse_producteur = producteur.find("p").get_text().strip()

#         # Creation querry INSERT INTO 
#         insert_query = f"INSERT INTO producteur (nom, adresse) VALUES ('{nom_producteur}', '{adresse_producteur}');\n"
#         file.write(insert_query)