INSERT INTO PROJET_ANIMATEUR(id_animateur, nom, prenom) VALUES (1,'Fring','Gustavo');
INSERT INTO PROJET_ACTIVITE VALUES(1,SEQ_PROJET_ANIMATEUR_PK.currval,'commerce national',15,TO_DATE('29/11/2014', 'dd/mm/yyyy'),TO_DATE('15:30', 'HH24:MI'),5,TO_DATE('03:30', 'HH24:MI'),20,55);

INSERT INTO PROJET_ANIMATEUR(id_animateur, nom, prenom) VALUES (1,'Schrader','Hank');
INSERT INTO PROJET_ACTIVITE VALUES(1,SEQ_PROJET_ANIMATEUR_PK.currval,'arts martiaux',15,TO_DATE('29/11/2014', 'dd/mm/yyyy'),TO_DATE('15:30', 'HH24:MI'),5,TO_DATE('03:30', 'HH24:MI'),20,55);
INSERT INTO PROJET_ACTIVITE VALUES(1,SEQ_PROJET_ANIMATEUR_PK.currval,'minéralophilie',15,TO_DATE('29/11/2014', 'dd/mm/yyyy'),TO_DATE('15:30', 'HH24:MI'),5,TO_DATE('03:30', 'HH24:MI'),20,55);


INSERT INTO PROJET_ANIMATEUR(id_animateur, nom, prenom) VALUES (1,'Pinkman','Jessie');
INSERT INTO PROJET_ACTIVITE VALUES(1,SEQ_PROJET_ANIMATEUR_PK.currval,'commerce local',15,TO_DATE('29/11/2014', 'dd/mm/yyyy'),TO_DATE('15:30', 'HH24:MI'),5,TO_DATE('03:30', 'HH24:MI'),20,55);
INSERT INTO PROJET_ACTIVITE VALUES(1,SEQ_PROJET_ANIMATEUR_PK.currval,'fabrication artisanale',15,TO_DATE('29/11/2014', 'dd/mm/yyyy'),TO_DATE('15:30', 'HH24:MI'),5,TO_DATE('03:30', 'HH24:MI'),20,55);
INSERT INTO PROJET_ACTIVITE VALUES(1,SEQ_PROJET_ANIMATEUR_PK.currval,'tourisme local',15,TO_DATE('29/11/2014', 'dd/mm/yyyy'),TO_DATE('15:30', 'HH24:MI'),5,TO_DATE('03:30', 'HH24:MI'),20,55);
INSERT INTO PROJET_ACTIVITE VALUES(1,SEQ_PROJET_ANIMATEUR_PK.currval,'tourisme local',15,TO_DATE('29/11/2014', 'dd/mm/yyyy'),TO_DATE('15:30', 'HH24:MI'),5,TO_DATE('03:30', 'HH24:MI'),20,55);
UPDATE PROJET_ACTIVITE SET id_animateur = 3 WHERE id_activite = 15;
DELETE projet_activite WHERE id_activite = 17;

UPDATE PROJET_ACTIVITE SET nb_semaine = 10 WHERE id_activite = 15;
update projet_activite set nb_semaine = 8 where id_activite = 15;