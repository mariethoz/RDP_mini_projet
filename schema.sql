-- Table generation

CREATE TABLE salle (
    id_salle SERIAL PRIMARY KEY,
    nom VARCHAR(10) NOT NULL
);

CREATE TABLE table_a_manger (
    id_table SERIAL PRIMARY KEY,
    id_salle INT,
    taille INT
);

CREATE TABLE table_res (
    id_table_res SERIAL PRIMARY KEY,
    id_table INT,
    id_reservation INT
);

CREATE TABLE reservation (
    id_reservation SERIAL PRIMARY KEY,
    id_client INT,
    res_date DATE NOT NULL,
    nb_personne INT CHECK (nb_personne > 0)
);

CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR(20) NOT NULL,
    prenom VARCHAR(20) NOT NULL
);

CREATE TABLE carte (
    id_carte SERIAL PRIMARY KEY,
    nom VARCHAR(40) NOT NULL,
    id_marge INT,
  	valide BOOLEAN DEFAULT FALSE 
);

CREATE TABLE recette (
    id_recette SERIAL PRIMARY KEY,
    nom VARCHAR(40) NOT NULL,
    recette_type VARCHAR(10) NOT NULL
);

CREATE TABLE subdivision_carte (
    id_sub_carte SERIAL PRIMARY KEY,
    id_carte INT,
    id_recette INT
);

CREATE TABLE prend_menu (
    id_prend_menu SERIAL PRIMARY KEY,
    id_table INT,
    id_carte INT
);

CREATE TABLE creation_recette (
    id_creation_recette SERIAL PRIMARY KEY,
    id_recette INT,
    id_ingredient INT,
    quantite FLOAT CHECK (quantite > 0),
    ordre INT CHECK (ordre > 0)
);

CREATE TABLE ingredient (
    id_ingredient SERIAL PRIMARY KEY,
    nom VARCHAR(40) NOT NULL,
    prix_unitaire FLOAT CHECK (prix_unitaire > 0)
);

CREATE TABLE marge (
    id_marge SERIAL PRIMARY KEY,
    valeur FLOAT CHECK (valeur > 0)
);


-- CONSTRAINT
ALTER TABLE creation_recette
ADD CONSTRAINT fk_id_ingredient FOREIGN KEY (id_ingredient)
REFERENCES ingredient(id_ingredient);
  
ALTER TABLE creation_recette
ADD CONSTRAINT fk_id_recette_2 FOREIGN KEY (id_recette)
REFERENCES recette(id_recette) ON DELETE CASCADE;

ALTER TABLE subdivision_carte
ADD CONSTRAINT fk_id_carte FOREIGN KEY (id_carte)
REFERENCES carte(id_carte);
  
ALTER TABLE subdivision_carte
ADD CONSTRAINT fk_id_recette FOREIGN KEY (id_recette)
REFERENCES recette(id_recette) ON DELETE CASCADE;

ALTER TABLE table_a_manger
ADD CONSTRAINT fk_id_salle FOREIGN KEY (id_salle)
REFERENCES salle(id_salle);

ALTER TABLE table_res
ADD CONSTRAINT fk_id_table FOREIGN KEY (id_table)
REFERENCES table_a_manger(id_table);

ALTER TABLE table_res
ADD CONSTRAINT fk_id_res FOREIGN KEY (id_reservation)
REFERENCES reservation(id_reservation);

ALTER TABLE prend_menu
ADD CONSTRAINT fk_id_res_2 FOREIGN KEY (id_res)
REFERENCES reservation(id_reservation);

ALTER TABLE prend_menu
ADD CONSTRAINT fk_id_res_3 FOREIGN KEY (id_res)
REFERENCES reservation(id_reservation);
