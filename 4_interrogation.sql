SELECT c_nom, c_PV
FROM Carte
WHERE c_type = 'Feu'
ORDER BY c_PV DESC;

SELECT c_nom, ext_id
FROM Carte
WHERE ext_id = 1;

SELECT paquet_code_SKU, paquet_prix_reference
FROM Paquet
WHERE paquet_prix_reference BETWEEN 5 AND 15;

SELECT c_nom
FROM Carte
WHERE c_nom LIKE '%Pika%';

SELECT DISTINCT c_type
FROM Carte;

SELECT c_type, COUNT(*) AS nb_cartes
FROM Carte
GROUP BY c_type;

SELECT c_type, AVG(c_PV) AS pv_moyen
FROM Carte
GROUP BY c_type;

SELECT MAX(atk_puissance) AS puissance_max
FROM Attaque;

SELECT ext_id, COUNT(*) AS nb_cartes
FROM Carte
GROUP BY ext_id;

SELECT lieu_nom, SUM(lieu_stocks_paquets) AS total_stock
FROM Lieu
GROUP BY lieu_nom
HAVING total_stock > 50;

SELECT c.c_nom, e.ext_nom
FROM Carte c
JOIN Extension e ON c.ext_id = e.ext_id;

SELECT c.c_nom, a.atk_nom
FROM Carte c
JOIN Possede p ON c.c_id = p.c_id
JOIN Attaque a ON p.atk_id = a.atk_id;

SELECT c.c_nom, i.ill_nom
FROM Carte c
JOIN A_dessine ad ON c.c_id = ad.c_id
JOIN Illustrateur i ON ad.ill_ID = i.ill_ID;

SELECT p.paquet_code_SKU, l.lieu_nom
FROM Paquet p
JOIN Distribue d ON p.paquet_code_SKU = d.paquet_code_SKU
JOIN Lieu l ON d.lieu_ID = l.lieu_ID;

SELECT c.c_nom, a.atk_nom
FROM Carte c
LEFT JOIN Possede p ON c.c_id = p.c_id
LEFT JOIN Attaque a ON p.atk_id = a.atk_id;

SELECT c_nom
FROM Carte
WHERE c_PV > (
    SELECT AVG(c_PV)
    FROM Carte
);

SELECT c_nom
FROM Carte
WHERE ext_id IN (
    SELECT ext_id
    FROM Extension
    WHERE ext_date_sortie > '2020-01-01'
);

SELECT lieu_nom
FROM Lieu
WHERE lieu_ID IN (
    SELECT lieu_ID
    FROM Distribue
);

SELECT c_nom
FROM Carte
WHERE c_id NOT IN (
    SELECT c_id
    FROM Possede
);

SELECT atk_nom
FROM Attaque
WHERE atk_puissance > ALL (
    SELECT a.atk_puissance
    FROM Attaque a
    JOIN Possede p ON a.atk_id = p.atk_id
    WHERE p.c_id = 1
);