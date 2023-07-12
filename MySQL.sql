CREATE DATABASE Restaurant;


-- Création de la table "utilisateurs"
CREATE TABLE utilisateurs (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  mot_de_passe VARCHAR(255) NOT NULL
);

-- Création de la table "produits"
CREATE TABLE produits (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(255) NOT NULL,
  description TEXT,
  prix DECIMAL(10, 2) NOT NULL
);

-- Création de la table "resevation"
CREATE TABLE reservation (
  id INT AUTO_INCREMENT PRIMARY KEY,
  utilisateur_id INT,
  produit_id INT,
  quantite INT,
  date_reservation DATETIME DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (utilisateur_id) REFERENCES utilisateurs(id),
  FOREIGN KEY (menu_id) REFERENCES menu(id)
);

-- Insertion d'un utilisateur
INSERT INTO utilisateurs (nom, email, mot_de_passe)
VALUES ("Sebastien", "sebastien@gmail.com", "mot1de2passe3");

-- Insertion de menu
INSERT INTO menu (nom, prix)
VALUES ("Menu à la Une", 44.99),
       ("Menu Dégustation", 34.99),
       ("Menu Végétarien", 29.99),
       ("Menu Enfants", 19,99)

-- Insertion d'une commande
INSERT INTO reservation (utilisateur_id, menu_id, quantite)
VALUES (1, 2, 1),
       (2, 3, 2),
       (1, 1, 1);
