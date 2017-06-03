DROP SEQUENCE SEQ_PROJET_ACTIVITE_PK;
DROP SEQUENCE SEQ_PROJET_ADHERENT_PK;
DROP SEQUENCE SEQ_PROJET_ANIMATEUR_PK;

DROP TRIGGER PROJET_UpperCaseAdherentName;
DROP TRIGGER PROJET_UpperCaseAnimateurName;
DROP TRIGGER T_PROJET_ANIMATEUR_PK;
DROP TRIGGER T_PROJET_ADHERENT_PK;
DROP TRIGGER T_PROJET_ACTIVITE_PK;

DROP TABLE PROJET_FAMILLE;
DROP TABLE PROJET_INSCRIPTION;
DROP TABLE PROJET_ADHERENT;
DROP TABLE PROJET_ACTIVITE;
DROP TABLE PROJET_ANIMATEUR;

/* LAUNCH 
SCRIPTS.SQL
SEQUENCES.SQL
TRIGGERS.SQL
TESTTRIGGERS.SQL
INSERTS.SQL
ALTER_TABLE.SQL
TRIGGER_CALCUL_HEURES.SQL
TEST_TRIGGER_CALCUL_HEURES.SQL
PACKAGE_PROJET.SQL
*/
