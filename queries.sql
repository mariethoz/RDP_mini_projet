-- Query pour affiché les tables libre
SELECT tab.id_table AS 'Table #', tab.id_salle AS 'Salle #', tab.taille AS '# Placesa'
FROM table_a_manger AS tab
LEFT JOIN table_res AS tabler ON tab.id_table = tabler.id_table
LEFT JOIN reservation AS resa ON tabler.id_reservation = resa.id_reservation
WHERE tabler.id_table IS NULL
   OR (resa.res_date < --CURRENT_TIMESTAMP
       OR resa.res_date > CURRENT_TIMESTAMP + INTERVAL '3 hours');

-- Query pour controller a une date spécific
SELECT tab.id_table AS 'Table #', tab.id_salle AS 'Salle #', tab.taille AS '# Placesa'
FROM table_a_manger AS tab
LEFT JOIN table_res AS tabler ON tab.id_table = tabler.id_table
LEFT JOIN reservation AS resa ON tabler.id_reservation = resa.id_reservation
WHERE tabler.id_table IS NULL
   OR (resa.res_date < '2024-12-10 19:30:00'
       OR resa.res_date > '2024-12-10 19:30:00'::TIMESTAMP + INTERVAL '3 hours');

-- Query pour affiché la carte du restaurant
SELECT c.nom AS "Référence", r.nom AS "Nom", r.recette_type AS "Type",
SUM(i.prix_unitaire * cr.quantite/100 * (1 + m.valeur/100)) AS "prix"
FROM carte AS c
JOIN subdivision_carte AS sc ON c.id_carte = sc.id_carte
JOIN recette AS r ON sc.id_recette = r.id_recette
JOIN creation_recette AS cr ON r.id_recette = cr.id_recette
JOIN ingredient AS i ON cr.id_ingredient = i.id_ingredient
JOIN marge AS m ON m.id_marge = c.id_marge
WHERE c.valide = TRUE
GROUP BY c.nom, r.nom, r.recette_type
ORDER BY c.nom DESC,
  CASE
    WHEN r.recette_type = 'Entrée' THEN 1
    WHEN r.recette_type = 'Plat' THEN 2
    WHEN r.recette_type = 'Dessert' THEN 3
    ELSE 4
	END;

-- Query addition pour un réservation
SELECT SUM(i.prix_unitaire * cr.quantite/100 * (1 + m.valeur/100)) AS "Total"
FROM client AS cl
JOIN reservation AS rv ON cl.id_client = rv.id_client
JOIN prend_menu AS pm ON rv.id_reservation = pm.id_reservation
JOIN carte AS c ON pm.id_carte = c.id_carte
JOIN marge AS m ON c.id_marge = m.id_marge
JOIN subdivision_carte AS sc ON c.id_carte = sc.id_carte
JOIN recette AS r ON sc.id_recette = r.id_recette
JOIN creation_recette AS cr ON r.id_recette = cr.id_recette
JOIN ingredient AS i ON cr.id_ingredient = i.id_ingredient
WHERE cl.nom = 'Bernard' AND cl.prenom = 'Alice';
