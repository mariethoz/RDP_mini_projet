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
    prix_unitaire FLOAT
);

CREATE TABLE marge (
    id_marge SERIAL PRIMARY KEY,
    valeur FLOAT CHECK (valeur > 0)
);
