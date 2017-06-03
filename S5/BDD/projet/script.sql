CREATE TABLE PROJET_ANIMATEUR(
	id_animateur number(5),
	nom varchar2(50) NOT NULL,
	prenom varchar2(100) NOT NULL,
	CONSTRAINT PK_ANIMATEUR PRIMARY KEY (id_animateur)
);

CREATE TABLE PROJET_ACTIVITE(
	id_activite number(5),
	id_animateur number(5),
	libelle varchar2(120) NOT NULL,
	capacite number(4),
	jour date NOT NULL,
	heure_deb date NOT NULL,
	nb_semaine number(2) NOT NULL,
	duree_seance date NOT NULL,
	age_min number(3),
	age_max number(3),
	CONSTRAINT PK_ACTIVITE PRIMARY KEY (id_activite),
	CONSTRAINT FK_ANIMATEUR FOREIGN KEY (id_animateur) REFERENCES PROJET_ANIMATEUR(id_animateur)
);

CREATE TABLE PROJET_ADHERENT(
	id_adherent number(5),
	nom varchar2(100) NOT NULL,
	prenom varchar2(50) NOT NULL,
	telephone varchar2(10) NOT NULL,
	mail varchar2(255) NOT NULL,
	date_naiss date NOT NULL,
	CONSTRAINT PK_ADHERENT PRIMARY KEY(id_adherent)
);

CREATE TABLE PROJET_FAMILLE(
	id_adherent number(5),
	id_proche number(5),
	lien_famillial varchar2(255) NOT NULL,
	CONSTRAINT PK_FAMILLE PRIMARY KEY (id_adherent,id_proche),
	CONSTRAINT FK_ADHERENT FOREIGN KEY (id_adherent) REFERENCES PROJET_ADHERENT(id_adherent),
	CONSTRAINT FK_PROCHE FOREIGN KEY (id_proche) REFERENCES PROJET_ADHERENT(id_adherent),
  CONSTRAINT CK_LIEN_FAMILLIAL CHECK (lien_famillial IN ('parent', 'enfant', 'conjoint', 'frere', 'soeur'))
);

CREATE TABLE PROJET_INSCRIPTION(
	id_activite number(5),
	id_adherent number(5),
	tarif float(8),
	CONSTRAINT PK_INSCRIPTION PRIMARY KEY (id_activite,id_adherent),
	CONSTRAINT FK_ADHERENT_INSCRIT FOREIGN KEY (id_adherent) REFERENCES PROJET_ADHERENT(id_adherent),
	CONSTRAINT FK_ACTIVITE FOREIGN KEY (id_activite) REFERENCES PROJET_ACTIVITE(id_activite)
);
