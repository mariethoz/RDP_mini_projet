# RDB Restaurant
Titre du projet

# Décrire l’organisation / la situation
Le restaurant "RDB Restaurant" est un établissement renommé pour ses repas festifs et ses événements spéciaux. Chaque année, il attire de nombreux clients. Le restaurant dispose de plusieurs salles équipées de tables de tailles variées afin d'assurer un service de qualité.

# Quelques métriques
Le restaurant "RDB Restaurant" dispose de 5 salles pouvant accueillir jusqu'à 200 personnes au total. Chaque salle est équipée de tables de différentes tailles, avec une capacité maximale de 10 personnes par table. Le restaurant reçoit en moyenne 150 réservations pour le repas de Noël, avec des groupes variant de 2 à 10 personnes.

# Quelques particularités de la situation
- Les réservations doivent être gérées de manière à optimiser l'utilisation des tables et des salles.
- Les préférences alimentaires et les restrictions des clients doivent être prises en compte lors de la planification des repas.
- Le serveur à l'entrée doit pouvoir affecter de nouveaux clients en tenant compte des réservations.

# Quels sont les challenges attendus, les choses difficiles à modéliser
- La gestion des réservations pour éviter les conflits de table.
- L'optimisation de l'affectation des tables pour maximiser l'utilisation de l'espace.
- La prise en compte des préférences alimentaires et des restrictions des clients.

# Quels aspects vous allez (ou pas) modéliser
### Nous allons modéliser les éléments suivants :
- Les salles avec leurs tables.
- Les tables avec le nombre maximum de personnes qu'elles peuvent accueillir.
- Les réservations incluant le client, le nombre de personnes, les tables affectées et la date de début.
- La carte avec menu et prix, ainsi que les recettes des plats.

### Nous ne modéliserons pas :
- Les finances du restaurant ainsi que la gestion du personnel.
- La gestion des stocks et les boissons.

# Décrivez votre familiarité avec la situation et votre motivation

À l'approche des Fêtes de Noël, on fait souvent une réservation pour un repas de famille. Du coup, on se demandait quelle pouvait être la gestion derrière.

# Décrivez si vous avez déjà des données à disposition ou facilement accessibles

Non, on les générera avec GPT et des recherches internet.

# Retour du feedback

## Simplification de la table

La gestion des réservations et des menus est suffisante. Nous avons donc supprimé la partie personnel.

## La forme normale du schéma

Chaque table ne contient que les informations qui lui sont propres.
Il est vrai que l'utilisation d'un nom pour la recette et la carte n'est pas intuitif. Cependant, le nom de la carte est un nom propre au restaurant pouvant désigner aussi bien un menu qu'un plat.
On peut donc dire que notre schéma est à la 3ème forme normale.

## Autres

Les marges sont dans une table séparée car certains menus ou plats peuvent avoir différentes marges. Par exemple, un menu spécial de Noël ne sera peut-être pas plus cher à faire qu'un menu standard, mais comme il s'agit d'un menu "spécial", on peut en demander plus, donc une meilleure marge.
La table 'prend_menu' permet de savoir ce qu'une réservation a commandé/consommé. Il est vrai qu'en la gardant connectée à la table 'table_a_manger', l'ajout d'une date aurait été nécessaire. Afin d'avoir une 3ème forme normale, nous l'avons donc connectée à la table 'réservation'.

### Requêtes intéressantes

1. La liste des tables à manger libres pour une date donnée, afin de savoir si le restaurant peut ou non accueillir un client.
2. Afficher la carte du restaurant qui est actuellement disponible.
3. Sortir l'addition pour une réservation.

### Schéma RDB
![Schema 2 0](https://github.com/user-attachments/assets/7dc70887-8967-4ef4-9814-ac58c25ad29f)