CREATE TABLE Attaque (
    atk_id INT,
    atk_nom VARCHAR(100),
    atk_puissance SMALLINT,
    atk_cout_energie TINYINT,
    atk_description VARCHAR(300),
    PRIMARY KEY (atk_id)
);

CREATE TABLE Paquet (
    paquet_code_SKU VARCHAR(30),
    paquet_type VARCHAR(30),
    paquet_prix_reference DECIMAL(6,2),
    paquet_statut BOOLEAN,
    PRIMARY KEY (paquet_code_SKU)
);

CREATE TABLE Extension (
    ext_id INT,
    ext_nom VARCHAR(100),
    ext_date_sortie DATE,
    ext_generation SMALLINT,
    PRIMARY KEY (ext_id)
);

CREATE TABLE Livraison (
    livraison_numero_suivi VARCHAR(50),
    livraison_date_expedition DATE,
    livraison_date_reception_prevue DATE,
    livraison_statut VARCHAR(20),
    PRIMARY KEY (livraison_numero_suivi)
);

CREATE TABLE Illustrateur (
    ill_ID INT,
    ill_nom VARCHAR(100),
    ill_nationalite VARCHAR(50),
    ill_statut BOOLEAN,
    PRIMARY KEY (ill_ID)
);

CREATE TABLE Lieu (
    lieu_ID INT,
    lieu_nom VARCHAR(100),
    lieu_type VARCHAR(30),
    lieu_pays VARCHAR(50),
    lieu_adresse VARCHAR(200),
    lieu_stocks_paquets INT,
    lieu_statut BOOLEAN,
    PRIMARY KEY (lieu_ID)
);

CREATE TABLE Carte (
    c_id INT,
    c_pos_serie SMALLINT,
    c_type VARCHAR(20),
    c_nom VARCHAR(100),
    c_langue VARCHAR(30),
    c_rarete VARCHAR(30),
    c_PV SMALLINT,
    c_resistance VARCHAR(50),
    c_faiblesse VARCHAR(50),
    c_texte_effet VARCHAR(500),
    c_date_sortie DATE,
    c_statut BOOLEAN,
    c_id_provient_de INT,
    paquet_code_SKU VARCHAR(30),
    ext_id INT,
    PRIMARY KEY (c_id),

    FOREIGN KEY (c_id_provient_de)
        REFERENCES Carte(c_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE,

    FOREIGN KEY (paquet_code_SKU)
        REFERENCES Paquet(paquet_code_SKU)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (ext_id)
        REFERENCES Extension(ext_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Possede (
    c_id INT,
    atk_id INT,
    PRIMARY KEY (c_id, atk_id),

    FOREIGN KEY (c_id)
        REFERENCES Carte(c_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (atk_id)
        REFERENCES Attaque(atk_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE A_dessine (
    c_id INT,
    ill_ID INT,
    PRIMARY KEY (c_id, ill_ID),

    FOREIGN KEY (c_id)
        REFERENCES Carte(c_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (ill_ID)
        REFERENCES Illustrateur(ill_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

CREATE TABLE Distribue (
    paquet_code_SKU VARCHAR(30),
    livraison_numero_suivi VARCHAR(50),
    lieu_ID INT,
    PRIMARY KEY (paquet_code_SKU, livraison_numero_suivi, lieu_ID),

    FOREIGN KEY (paquet_code_SKU)
        REFERENCES Paquet(paquet_code_SKU)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (livraison_numero_suivi)
        REFERENCES Livraison(livraison_numero_suivi)
        ON DELETE CASCADE
        ON UPDATE CASCADE,

    FOREIGN KEY (lieu_ID)
        REFERENCES Lieu(lieu_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);
