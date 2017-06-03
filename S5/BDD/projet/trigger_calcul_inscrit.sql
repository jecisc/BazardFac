create or replace TRIGGER t_calcul_inscrit
BEFORE INSERT OR DELETE ON PROJET_INSCRIPTION
FOR EACH ROW
BEGIN
	IF INSERTING THEN
		UPDATE PROJET_ACTIVITE SET nb_inscrit = nb_inscrit + 1 WHERE id_activite = :new.id_activite;
	END IF;
  
	IF DELETING THEN
		UPDATE PROJET_ACTIVITE SET  nb_inscrit = nb_inscrit -1 WHERE id_activite = :old.id_activite;
	END IF;
END;