# Mini-Projet Base de Données - Groupe SC5-  

    

## INTRODUCTION

Ce ReadMe sert à détailler le processus suivi lors du Mini-Projet de la matière TI404 – Base de données 1 : Concepts de base. Notre équipe est constituée de 3 personnes :  
Kevin-Seng TEK (pseudonyme git : Yuyuuuu2)  
Isidore PONTAY (pseudonyme git : 3easydore)  
Myriam MOUTTALIB (pseudonyme git : MyriamMou)  

Notre idée est de créer une base de données destinée à une entreprise chargée de la distribution de cartes Pokémon. Elle doit donc pouvoir contenir à la fois des informations sur les cartes mais aussi sur les processus de livraisons et les lieux de destination. 


## PARTIE 1 

Afin d’obtenir les règles de gestion de données et le dictionnaire de données brut, on écrit un prompt qui sera ensuite envoyé à ChatGPT. Le prompt est le suivant :  
  
Tu travailles dans le domaine de la commercialisation de cartes pokemon. Ton entreprise a comme activité d’enregistrer les données des cartes pokemon qu’elle expédie ensuite des usines/entrepôts jusqu’aux entrepôts/magasins. C’est une entreprise comme Media Factory, The Pokemon Company, Wizard of the Coast. Inspire-toi donc aussi du fonctionnement des cartes pokemon.  
Ton entreprise veut appliquer MERISE pour concevoir un système d'information. Tu es chargé de la partie analyse, c’est-à-dire de collecter les besoins auprès de l’entreprise. Elle a fait appel à un étudiant en ingénierie informatique pour réaliser ce projet, tu dois lui fournir les informations nécessaires pour qu’il applique ensuite lui-même les étapes suivantes de conception et développement de la base de données. 
D’abord, établis les règles de gestions des données de ton entreprise sous la forme d'une liste à puce. Elle doit correspondre aux informations que fournit quelqu’un qui connaît le fonctionnement de l’entreprise, mais pas comment se construit un système d’information.  
Ensuite, à partir de ces règles, fournis un dictionnaire de données brutes avec les colonnes suivantes, regroupées dans un tableau : signification de la donnée, type, taille en nombre de caractères ou de chiffres. Il sert à fournir des informations supplémentaires sur chaque donnée (taille et type) mais sans a priori sur comment les données vont être modélisées ensuite. La taille doit être fournie en bits pour un nombre. Le dictionnaire doit contenir comme entités : cartes, extension, illustrateur, attaque, paquet, livraison, lieu.  
Fournis donc les règles de gestion et le dictionnaire de données.  
  
  
L’IA renvoie alors la réponse suivante :  

Très bien. Je me place dans le contexte d’une entreprise comparable à The Pokémon Company, Wizards of the Coast ou Media Factory, spécialisée dans la gestion et la commercialisation de cartes Pokémon depuis les usines vers les entrepôts et magasins.  
Je fournis ci-dessous :  
1.	Les règles de gestion (vision métier, sans notion technique)    
2.	Le dictionnaire de données brutes demandé
________________________________________
1️⃣ RÈGLES DE GESTION  
📦 Gestion des cartes  
•	Chaque carte Pokémon possède un identifiant interne unique.  
•	Chaque carte possède un nom officiel.  
•	Chaque carte appartient obligatoirement à une seule extension.  
•	Une extension contient plusieurs cartes.  
•	Chaque carte possède un numéro officiel dans son extension.  
•	Chaque carte possède une rareté (Commune, Peu Commune, Rare, Ultra Rare, etc.).  
•	Une carte possède un type (Plante, Feu, Eau, Électrique, etc.).  
•	Une carte peut avoir un ou plusieurs points de vie.  
•	Une carte peut être illustrée par un ou plusieurs illustrateur.  
•	Un illustrateur peut illustrer plusieurs cartes.  
•	Une carte peut posséder zéro, une ou plusieurs attaques.  
•	Une carte peut avoir un texte descriptif (effet, règle spéciale).  
•	Une carte peut avoir une date officielle de mise en circulation.  
•	Une carte peut être active ou retirée du catalogue.  
________________________________________
📚 Gestion des extensions
•	Chaque extension possède un identifiant unique.  
•	Chaque extension possède un nom officiel.  
•	Une extension possède une date de sortie.  
•	Une extension peut être associée à une génération représentée par un chiffre.  
________________________________________
🎨 Gestion des illustrateurs  
•	Chaque illustrateur possède un identifiant unique.  
•	Chaque illustrateur possède un nom officiel.  
•	Un illustrateur peut avoir une nationalité.  
•	Un illustrateur peut être actif ou inactif.  
________________________________________
⚔️ Gestion des attaques  
•	Chaque attaque possède un identifiant unique.  
•	Une attaque possède un nom.  
•	Une attaque possède une puissance numérique.  
•	Une attaque peut avoir un coût en énergie.  
•	Une attaque peut avoir un texte descriptif d’effet.  
•	Une attaque est obligatoirement associée à une seule carte.  
________________________________________
📦 Gestion des paquets (produits physiques)  
•	Un paquet possède un code produit unique (SKU).  
•	Un paquet appartient à une seule extension.  
•	Un paquet possède un type (Booster, Coffret, Display).  
•	Un paquet contient un nombre défini de cartes.  
•	Un paquet possède un prix de référence.  
•	Un paquet peut être actif ou retiré du catalogue.  
________________________________________
🚚 Gestion des livraisons  
•	Chaque livraison possède un identifiant unique.  
•	Une livraison contient un ou plusieurs paquets.  
•	Une livraison possède une date d’expédition.  
•	Une livraison possède une date de réception prévue.  
•	Une livraison possède un statut (Préparation, Expédiée, Livrée, Annulée).  
•	Une livraison part d’un lieu d’origine.  
•	Une livraison arrive vers un lieu de destination.  
•	Une livraison peut comporter un numéro de suivi logistique.  
________________________________________
📍 Gestion des lieux  
•	Chaque lieu possède un identifiant unique.  
•	Un lieu possède un nom.  
•	Un lieu possède un type (Usine, Entrepôt, Magasin).  
•	Un lieu possède une adresse complète.  
•	Un lieu appartient à un pays.  
•	Un lieu peut être actif ou fermé.  
________________________________________
2️⃣ DICTIONNAIRE DE DONNÉES BRUTES  
⚠️ Types utilisés :  
•	Texte  
•	Nombre entier  
•	Nombre décimal  
•	Date  
•	Booléen  
Les tailles numériques sont exprimées en bits.  
________________________________________
📘 TABLEAU DU DICTIONNAIRE DE DONNÉES  
|Entité|	Donnée	 |         Signification	     |                     Type	      |   Taille  |
|----------|:-------------:|:-------------:|:-------------:|------:| 
|Carte	|  id_carte	 |       Identifiant unique interne de la carte|	Nombre entier	| 32 bits  |
|Carte |  nom_carte	|        Nom officiel de la carte	 |             Texte	    |     100 caractères  |
| Carte	 |  rarete	 |          Niveau de rareté	 |                      Texte	    |     30 caractères|   
| Carte	|   type_carte	 |      Type élémentaire	 |                      Texte	    |      20 caractères  |
| Carte	|   points_vie	 |      Points de vie (PV)	|                     Nombre entier	 | 16 bits  |
| Carte	|   texte_effet	 |      Description ou règle spéciale	    |       Texte	    |      500 caractères | 
| Carte	|   date_sortie_carte| 	Date officielle de sortie	   |            Date	  |        32 bits  |
| Carte	 |  statut_carte	  |   Carte active ou retirée	  |               Booléen	   |     1 bit  |
________________________________________
|Entité|	Donnée	 |         Signification	     |                     Type	      |   Taille  |
|----------|:-------------:|:-------------:|:-------------:|------:| 
|Extension|	id_extension|	Identifiant unique extension|	Nombre entier	|32 bits|
|Extension|	nom_extension|	Nom officiel	|Texte	|100 caractères|
|Extension|	date_sortie_extension|	Date officielle|	Date|	32 bits|
|Extension|	generation	|Génération	|Nombre entier	|16 bits|
________________________________________
|Entité|	Donnée	 |         Signification	     |                     Type	      |   Taille  |
|----------|:-------------:|:-------------:|:-------------:|------:| 
|Illustrateur|	id_illustrateur|	Identifiant unique illustrateur	|Nombre entier|	32 bits|
|Illustrateur|	nom_illustrateur	|Nom officiel|	Texte	|100 caractères|
|Illustrateur|	nationalite|	Pays d’origine	|Texte|	50 caractères|
|Illustrateur|	statut_illustrateur|	Actif ou inactif|	Booléen	|1 bit|
________________________________________
|Entité|	Donnée	 |         Signification	     |                     Type	      |   Taille  |
|----------|:-------------:|:-------------:|:-------------:|------:| 
|Attaque|	id_attaque|	Identifiant unique attaque|	Nombre entier|	32 bits|
|Attaque|	nom_attaque|	Nom de l’attaque	|Texte|	100 caractères|
|Attaque|	puissance|	Valeur numérique des dégâts|	Nombre entier|	16 bits|
|Attaque|	cout_energie|	Nombre d’énergies requises	|Nombre entier|	8 bits|
|Attaque|	description_attaque|	Effet détaillé	|Texte	|300 caractères|
________________________________________
|Entité|	Donnée	 |         Signification	     |                     Type	      |   Taille  |
|----------|:-------------:|:-------------:|:-------------:|------:| 
|Paquet|	type_paquet|	Booster, Coffret, Display	|Texte|	30 caractères|
|Paquet	|code_produit	|Code SKU interne	|Texte	|30 caractères|
|Paquet	|prix_reference|	Prix catalogue	|Nombre décimal	|32 bits|
|Paquet|	statut_paquet|	Actif ou retiré	|Booléen|	1 bit|
________________________________________
|Entité|	Donnée	 |         Signification	     |                     Type	      |   Taille  |
|----------|:-------------:|:-------------:|:-------------:|------:| 
|Livraison|	date_expedition	|Date d’envoi|	Date|	32 bits|
|Livraison	|date_reception_prevue|	Date estimée d’arrivée	|Date	|32 bits|
|Livraison|	statut_livraison|	État logistique|	Texte|	20 caractères|
|Livraison|	numero_suivi|	Numéro tracking transporteur|	Texte	|50 caractères|
________________________________________
|Entité|	Donnée	 |         Signification	     |                     Type	      |   Taille  |
|----------|:-------------:|:-------------:|:-------------:|------:| 
|Lieu|	id_lieu	|Identifiant unique lieu|	Nombre entier|	32 bits|
|Lieu|nom_lieu|	Nom du site|	Texte|	100 caractères|
|Lieu	|type_lieu|	Usine / Entrepôt / Magasin|	Texte|	30 caractères|
|Lieu|	adresse|	Adresse complète	|Texte	|200 caractères|
|Lieu|	pays|	Pays|	Texte|	50 caractères|
|Lieu|	statut_lieu|	Actif ou fermé	|Booléen	|1 bit|
________________________________________
✅ Résultat
Tu disposes maintenant :  
•	Des règles de gestion métier (niveau MCD – expression des besoins)  
•	Du dictionnaire de données brutes (base pour MCD puis MLD)  
L’étudiant peut désormais :  
1.	Identifier les entités
2.	Déterminer les associations
3.	Poser les cardinalités
4.	Construire le MCD (Modèle Conceptuel de Données)
5.	Puis passer au MLD et au MPD   

Après application des instructions de ChatGPT, nous avons choisi de rajouter quelques attributs au niveau des caractéristiques de la carte qui nous semblaient plus réalistes : pos_série, un numéro non-unique qui est une deuxième facteur de rareté de la carte ; ainsi que la faiblesse et résistance de la carte. Nous avons aussi décidé de rajouter les stocks de paquets présents dans chaque lieu. On obtient alors le MCD suivant :   
<img width="1070" height="588" alt="image" src="https://github.com/user-attachments/assets/e6aed3ba-ab10-482b-bee1-8835abd57bc9" />  

La MLD correspondante est la suivante : 
Attaque = (atk_id INT, atk_nom VARCHAR(100), atk_puissance SMALLINT, atk_cout_energie BYTE, atk_description VARCHAR(300));  
Paquet = (paquet_code_SKU VARCHAR(30), paquet_type VARCHAR(30), paquet_prix_reference DECIMAL(6,2), paquet_statut LOGICAL);  
Extension = (ext_id INT, ext_nom VARCHAR(100), ext_date_sortie DATE, ext_generation SMALLINT);  
Livraison = (livraison_numero_suivi VARCHAR(50), livraison_date_expedition DATE, livraison_date_reception_prevue DATE, livraison_statut VARCHAR(20));  
Illustrateur = (ill_ID INT, ill_nom VARCHAR(100), ill_nationalite VARCHAR(50), ill_statut LOGICAL);  
Lieu = (lieu_ID INT, lieu_nom VARCHAR(100), lieu_type VARCHAR(30), lieu_pays VARCHAR(50), lieu_adresse VARCHAR(200), lieu_stocks_paquets INT, lieu_statut LOGICAL);  
Carte = (c_id INT, c_pos_série SMALLINT, c_type VARCHAR(20), c_nom VARCHAR(100), c_langue VARCHAR(30), c_rarete VARCHAR(30), c_PV SMALLINT, c_résistance VARCHAR(50), c_faiblesse VARCHAR(50), c_texte_effet VARCHAR(500), c_date_sortie DATE, c_statut LOGICAL, #c_id_provient_de*, #paquet_code_SKU*, #ext_id);  
Possède = (#c_id, #atk_id);  
A_dessiné = (#c_id, #ill_ID);  
Distribue = (#paquet_code_SKU, #livraison_numero_suivi, #lieu_ID);  


On va mettre en place la situation réelle: un responsable logistique et marketing qui va utiliser la Base de Données afin de:
- 

