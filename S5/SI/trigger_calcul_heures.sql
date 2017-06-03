create or replace
TRIGGER t_calcul_heures_INSERT
BEFORE INSERT OR UPDATE OR DELETE ON PROJET_ACTIVITE
FOR EACH ROW
BEGIN
	IF INSERTING THEN
		UPDATE PROJET_ANIMATEUR SET nb_heures = nb_heures + (((to_number(to_char(:new.duree_seance,'HH24') * 60 + to_number(to_char(:new.duree_seance,'MI'))) * :new.nb_semaine)/60)) WHERE id_animateur = :new.id_animateur;
	END IF;

	IF UPDATING THEN
		IF (:old.id_animateur = :new.id_animateur) then
			UPDATE PROJET_ANIMATEUR SET nb_heures = nb_heures -(to_number(to_char(:old.duree_seance)) * :old.nb_semaine) + (to_number(to_char(:new.duree_seance)) *:new.nb_semaine) WHERE id_animateur = :new.id_animateur;
		ELSE
			UPDATE PROJET_ANIMATEUR SET nb_heures = nb_heures - (((to_number(to_char(:old.duree_seance,'HH24') * 60 + to_number(to_char(:old.duree_seance,'MI'))) * :old.nb_semaine)/60)) WHERE id_animateur = :old.id_animateur;
			UPDATE PROJET_ANIMATEUR SET nb_heures = nb_heures + (((to_number(to_char(:new.duree_seance,'HH24') * 60 + to_number(to_char(:new.duree_seance,'MI'))) * :new.nb_semaine)/60)) WHERE id_animateur = :new.id_animateur;
		END IF;
	END IF;

	IF DELETING THEN
		UPDATE PROJET_ANIMATEUR SET nb_heures = nb_heures - (((to_number(to_char(:old.duree_seance,'HH24') * 60 + to_number(to_char(:old.duree_seance,'MI'))) * :old.nb_semaine)/60)) WHERE id_animateur = :old.id_animateur;
	END IF;
END;
		
