CREATE TABLE salle (
    id_salle SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE table_a_manger (
    id_table SERIAL PRIMARY KEY,
    id_salle INT,
    taille INT
);

CREATE TABLE personnel (
    id_personnel SERIAL PRIMARY KEY,
    nom VARCHAR,
    prenom VARCHAR,
    type INT
);

CREATE TABLE personnel_table (
    id_personnel_table SERIAL PRIMARY KEY,
    id_personnel INT,
    id_table INT
);

CREATE TABLE personnel_type (
    id_personnel_type SERIAL PRIMARY KEY,
    type VARCHAR
);

CREATE TABLE table_res (
    id_table_res SERIAL PRIMARY KEY,
    id_table INT,
    id_reservation INT
);

CREATE TABLE reservation (
    id_reservation SERIAL PRIMARY KEY,
    id_client INT,
    res_date DATE,
    nb_personne INT
);

CREATE TABLE client (
    id_client SERIAL PRIMARY KEY,
    nom VARCHAR,
    prenom VARCHAR
);

CREATE TABLE menu_carte (
    id_menu_carte SERIAL PRIMARY KEY,
    nom VARCHAR,
    id_marge INT
);

CREATE TABLE recette (
    id_recette SERIAL PRIMARY KEY,
    nom VARCHAR,
    type VARCHAR
);

CREATE TABLE creation_menu_carte (
    id_creation_menu_carte SERIAL PRIMARY KEY,
    id_recette INT,
    id_menu_carte INT
);

CREATE TABLE prend_menu (
    id_prend_menu SERIAL PRIMARY KEY,
    id_table INT,
    id_menu_carte INT
);

CREATE TABLE creation_recette (
    id_creation_recette SERIAL PRIMARY KEY,
    id_recette INT,
    id_ingredient INT,
    quantite FLOAT,
    ordre INT
);

CREATE TABLE ingredient (
    id_ingredient SERIAL PRIMARY KEY,
    nom VARCHAR,
    prix_unitaire FLOAT
);

CREATE TABLE marge (
    id_marge SERIAL PRIMARY KEY,
    valeur FLOAT
);
