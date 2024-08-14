USE BD_VinDuCanada;

-- Insertion de données fabriquées dans la base de données
INSERT INTO Producteur_de_vin (id_producteur, nom, adresse, région) VALUES
(1, 'Mission Hill', 'Kelowna, Canada', 'Colombie-Britannique'),
(2, 'Inniskillin', 'Niagara-on-the-Lake, Canada', 'Ontario'),
(3, 'Jackson-Triggs', 'Niagara-on-the-Lake, Canada', 'Ontario'),
(4, 'Quails'' Gate', 'West Kelowna, Canada', 'Colombie-Britannique'),
(5, 'Nk''Mip Cellars', 'Osoyoos, Canada', 'Colombie-Britannique'),
(6, 'Peller Estates', 'Niagara-on-the-Lake, Canada', 'Ontario'),
(7, 'Tawse Winery', 'Vineland, Canada', 'Ontario'),
(8, 'Cave Spring', 'Jordan, Canada', 'Ontario'),
(9, 'Sumac Ridge', 'Summerland, Canada', 'Colombie-Britannique'),
(10, 'Sandhill Wines', 'Kelowna, Canada', 'Colombie-Britannique'),
(11, 'CedarCreek Estate Winery', 'Kelowna, Canada', 'Colombie-Britannique'),
(12, 'Hester Creek', 'Oliver, Canada', 'Colombie-Britannique'),
(13, 'Burrowing Owl', 'Oliver, Canada', 'Colombie-Britannique'),
(14, 'Henry of Pelham', 'St. Catharines, Canada', 'Ontario'),
(15, 'Thirty Bench', 'Beamsville, Canada', 'Ontario'),
(16, 'Domaine du Nival', 'Québec, Canada', 'Québec'),
(17, 'Vignoble Rivière du Chêne', 'Saint-Eustache, Canada', 'Québec'),
(18, 'Vignoble La Bauge', 'Saint-Paul-d’Abbotsford, Canada', 'Québec'),
(19, 'Vignoble du Ruisseau', 'Dunham, Canada', 'Québec'),
(20, 'Vignoble Sainte-Pétronille', 'Sainte-Pétronille, Canada', 'Québec');

INSERT INTO Vin (id_vin, nom, type, millésime) VALUES
(1, 'Oculus', 'Rouge', 2017),
(2, 'Icewine Vidal', 'Blanc', 2018),
(3, 'Cabernet Sauvignon', 'Rouge', 2016),
(4, 'Merlot', 'Rouge', 2019),
(5, 'Pinot Noir', 'Rouge', 2018),
(6, 'Chardonnay', 'Blanc', 2017),
(7, 'Riesling', 'Blanc', 2016),
(8, 'Gewurztraminer', 'Blanc', 2020),
(9, 'Sauvignon Blanc', 'Blanc', 2019),
(10, 'Syrah', 'Rouge', 2017),
(11, 'Zinfandel', 'Rouge', 2018),
(12, 'Petit Verdot', 'Rouge', 2017),
(13, 'Baco Noir', 'Rouge', 2016),
(14, 'Gamay', 'Rouge', 2018),
(15, 'Cabernet Franc', 'Rouge', 2019),
(16, 'Malbec', 'Rouge', 2017),
(17, 'Viognier', 'Blanc', 2016),
(18, 'Rosé', 'Rosé', 2018),
(19, 'Icewine Riesling', 'Blanc', 2019),
(20, 'Late Harvest Chardonnay', 'Blanc', 2017),
(21, 'Fume Blanc', 'Blanc', 2019),
(22, 'Pinot Gris', 'Blanc', 2020),
(23, 'Icewine Cabernet Franc', 'Rouge', 2018),
(24, 'Icewine Cabernet Sauvignon', 'Rouge', 2017),
(25, 'Sparkling Wine', 'Blanc', 2018),
(26, 'Sparkling Rosé', 'Rosé', 2017),
(27, 'Prosecco', 'Blanc', 2019),
(28, 'Moscato', 'Blanc', 2020),
(29, 'Shiraz', 'Rouge', 2018),
(30, 'Gruner Veltliner', 'Blanc', 2019),
(31, 'Icewine Merlot', 'Rouge', 2017),
(32, 'Sauvignon Gris', 'Blanc', 2019),
(33, 'Chenin Blanc', 'Blanc', 2016),
(34, 'Icewine Pinot Noir', 'Rouge', 2018),
(35, 'Sparkling Red Wine', 'Rouge', 2017),
(36, 'Riesling Icewine', 'Blanc', 2018),
(37, 'Icewine Gewurztraminer', 'Blanc', 2017),
(38, 'Icewine Gruner Veltliner', 'Blanc', 2019),
(39, 'Sparkling Blanc de Blancs', 'Blanc', 2018),
(40, 'Sparkling Blanc de Noirs', 'Rouge', 2017),
(41, 'Cuvée Rosé', 'Rosé', 2019),
(42, 'Rosé d''Anjou', 'Rosé', 2020),
(43, 'Moscato d''Asti', 'Blanc', 2019),
(44, 'Brut Rosé', 'Rosé', 2017),
(45, 'Rosé Brut', 'Rosé', 2019),
(46, 'Sparkling Merlot', 'Rouge', 2018),
(47, 'Blanc de Blancs', 'Blanc', 2020),
(48, 'Brut Nature', 'Blanc', 2019),
(49, 'Brut Reserve', 'Blanc', 2018),
(50, 'Blanc de Noirs', 'Rouge', 2020),
(51, 'Vidal Icewine', 'Blanc', 2018),
(52, 'Orléans Rouge', 'Rouge', 2019),
(53, 'Chardonnay de l’Orléans', 'Blanc', 2020),
(54, 'Gamay du Vignoble Rivière du Chêne', 'Rouge', 2018),
(55, 'Chardonnay du Vignoble Rivière du Chêne', 'Blanc', 2019),
(56, 'Baco Noir du Vignoble La Bauge', 'Rouge', 2018),
(57, 'Pinot Noir du Vignoble La Bauge', 'Rouge', 2019),
(58, 'Cuvée du Vignoble du Ruisseau', 'Rouge', 2017),
(59, 'Chardonnay du Vignoble du Ruisseau', 'Blanc', 2018),
(60, 'Rosé du Vignoble Sainte-Pétronille', 'Rosé', 2019),
(61, 'Pinot Gris du Vignoble Sainte-Pétronille', 'Blanc', 2020);

INSERT INTO Distributeur_de_vin (id_distributeur, nom, adresse, région) VALUES
(1, 'VQA Wines of Canada', 'Toronto, Canada', 'Ontario'),
(2, 'BC Liquor Stores', 'Vancouver, Canada', 'Colombie-Britannique'),
(3, 'SAQ', 'Montréal, Canada', 'Québec'),
(4, 'LCBO', 'Ottawa, Canada', 'Ontario'),
(5, 'Alberta Liquor Store Association', 'Edmonton, Canada', 'Alberta'),
(6, 'Nova Scotia Liquor Corporation', 'Halifax, Canada', 'Nouvelle-Écosse'),
(7, 'Manitoba Liquor & Lotteries', 'Winnipeg, Canada', 'Manitoba'),
(8, 'Newfoundland and Labrador Liquor Corporation', 'St. John''s, Canada', 'Terre-Neuve-et-Labrador'),
(9, 'PEI Liquor Control Commission', 'Charlottetown, Canada', 'Île-du-Prince-Édouard'),
(10, 'Saskatchewan Liquor and Gaming Authority', 'Regina, Canada', 'Saskatchewan');

INSERT INTO Détaillant_de_vin (id_détaillant, nom, adresse, région) VALUES
(1, 'Vin Room', 'Calgary, Canada', 'Alberta'),
(2, 'Wine Rack', 'Toronto, Canada', 'Ontario'),
(3, 'LCBO', 'Ottawa, Canada', 'Ontario'),
(4, 'J Webb Wine Merchant', 'Calgary, Canada', 'Alberta'),
(5, 'Crown Liquor Store', 'Vancouver, Canada', 'Colombie-Britannique'),
(6, 'Metropolitan Wines', 'Toronto, Canada', 'Ontario'),
(7, 'Marquis Wine Cellars', 'Vancouver, Canada', 'Colombie-Britannique'),
(8, 'The Wine Cellar', 'Montreal, Canada', 'Québec'),
(9, 'La Cave à Vin', 'Montréal, Canada', 'Québec'),
(10, 'Vino Volo', 'Ottawa, Canada', 'Ontario');

INSERT INTO Transaction (id_transaction, date, montant) VALUES
(1, '2024-09-01', 5000),
(2, '2024-09-06', 5200),
(3, '2024-09-11', 5400),
(4, '2024-09-16', 5600),
(5, '2024-09-21', 5800),
(6, '2024-09-26', 6000),
(7, '2024-10-01', 6200),
(8, '2024-10-06', 6400),
(9, '2024-10-11', 6600),
(10, '2024-10-16', 6800),
(11, '2024-10-21', 7000),
(12, '2024-10-26', 7200),
(13, '2024-11-01', 7400),
(14, '2024-11-06', 7600),
(15, '2024-11-11', 7800),
(16, '2024-11-16', 8000),
(17, '2024-11-21', 8200),
(18, '2024-11-26', 8400),
(19, '2024-12-01', 8600),
(20, '2024-12-06', 8800),
(21, '2024-12-11', 9000),
(22, '2024-12-16', 9200),
(23, '2024-12-21', 9400),
(24, '2024-12-26', 9600),
(25, '2024-12-31', 9800),
(26, '2025-01-05', 10000),
(27, '2025-01-10', 10200),
(28, '2025-01-15', 10400),
(29, '2025-01-20', 10600),
(30, '2025-01-25', 10800),
(31, '2025-01-30', 11000),
(32, '2025-02-04', 11200),
(33, '2025-02-09', 11400),
(34, '2025-02-14', 11600),
(35, '2025-02-19', 11800),
(36, '2025-02-24', 12000),
(37, '2025-03-01', 12200),
(38, '2025-03-06', 12400),
(39, '2025-03-11', 12600),
(40, '2025-03-16', 12800),
(41, '2025-03-21', 13000),
(42, '2025-03-26', 13200),
(43, '2025-03-31', 13400),
(44, '2025-04-05', 13600),
(45, '2025-04-10', 13800),
(46, '2025-04-15', 14000),
(47, '2025-04-20', 14200),
(48, '2025-04-25', 14400),
(49, '2025-04-30', 14600),
(50, '2025-05-05', 14800);