CREATE OR REPLACE PACKAGE pack_adherent AS
  
  TARIF_ACTIVITE constant Number := 200 ; -- en euros, tarif annuel d'inscription
  REDUCTION constant NUMBER := 10 ; --pourcentage
  
  --Exceptions
  
  PB_LIEN_FAMILIAL Exception ;
  PRAGMA exception_init(PB_LIEN_FAMILIAL, -20110);
  
  ERREUR_AGE Exception ;
  PRAGMA exception_init(ERREUR_AGE, -20111);
  
  GROUPE_PLEIN Exception ;
  PRAGMA exception_init(GROUPE_PLEIN, -20112);
  
  ADHERENT_INCONNU Exception ;
  PRAGMA exception_init(ADHERENT_INCONNU, -20113);
  
  ACTIVITE_INCONNUE Exception ;
  PRAGMA exception_init(ACTIVITE_INCONNUE, -20114);
  
  ERREUR_INSCRIPTION Exception ;
  PRAGMA exception_init(ERREUR_INSCRIPTION, -20115);
  
  --Procedures
  
  procedure lien_familial(un_adherent projet_adherent.id_adherent%type, un_autre projet_adherent.id_adherent%type, lien projet_famille.lien_famillial%type);
  
  procedure enlever_lien_familial(un_adherent projet_adherent.id_adherent%type, un_autre projet_adherent.id_adherent%type);
                                 
  procedure inscription(un_adherent projet_adherent.id_adherent%type, une_activite projet_activite.id_activite%type);
  
  procedure desinscription(un_adherent projet_projet_adherent.id_adherent%type, une_activite projet_activite.id_activite%type);
                            
end pack_adherent;
/
CREATE OR REPLACE PACKAGE BODY pack_adherent AS
  
  --Procedure permettant d'ajouter un lien familiale.
  --Si le lien existe déjà:
  --  si c’est un lien qui a le meme sens (par exemple a1 parent de a2 au lieu de a2 enfant de a1), alors la procedure ne fera rien.
  --  si c’est un lien qui n’a pas le meme sens (par exemple a1 parent de a2 au lieu de a2 frere de a1), alors la procedure declenchera l’exception PB_LIEN_FAMILIAL
  --Si au moins l’un des deux adherents n’existe pas, la procedure declenchera l’exception ADHERENT_INCONNU.
  procedure lien_familial(un_adherent projet_adherent.id_adherent%type, un_autre projet_adherent.id_adherent%type, lien projet_famille.lien_famillial%type) is
    lien_actuel PROJET_FAMILLE.lien_famillial%type;
    adher NUMBER;
  begin
    --On vérifie si les adhérents exitent bien.
    SELECT COUNT(*) INTO adher FROM projet_adherent WHERE id_adherent = un_adherent;
    BEGIN
      IF adher=0 THEN
        RAISE ADHERENT_INCONNU; --Si un adherent n'existe pas, on utilise une exception
      END IF;     
    END;
    
    SELECT COUNT(*) INTO adher FROM projet_adherent WHERE id_adherent = un_autre;
    BEGIN
      IF adher = 0 THEN
        RAISE ADHERENT_INCONNU; --Si un adherent n'existe pas, on utilise une exception
      END IF;     
    END;  
          
    -- Puis on traite le lien.
    SELECT lien_famillial INTO lien_actuel FROM projet_famille WHERE ((id_adherent = un_adherent AND id_proche = un_autre) OR (id_adherent = un_autre AND id_proche = un_adherent ));
    BEGIN
      --On traite les mauvais liens ici.
     IF lien_actuel = 'parent' AND lien <> 'enfant' THEN
        RAISE PB_LIEN_FAMILIAL;
      END IF;
      
      IF lien_actuel = 'enfant' AND lien <> 'parent' THEN
        RAISE PB_LIEN_FAMILIAL;
      END IF;
      
      IF lien_actuel = 'conjoint' AND lien <> 'conjoint' THEN
        RAISE PB_LIEN_FAMILIAL;
      END IF;
      
      IF lien_actuel = 'frere' AND lien <> 'frere' AND lien <> 'soeur' THEN
        RAISE PB_LIEN_FAMILIAL;
      END IF;
      
      IF lien_actuel = 'soeur' AND lien <> 'frere' AND lien <> 'soeur' THEN
        RAISE PB_LIEN_FAMILIAL;
      END IF;
    END;
    
    EXCEPTION
    --Si aucun lien n'existe déjà, on le crée.
      WHEN  ADHERENT_INCONNU THEN
         RAISE ADHERENT_INCONNU;
      WHEN NO_DATA_FOUND THEN
         INSERT INTO PROJET_FAMILLE VALUES(un_adherent, un_autre, lien);
      WHEN PB_LIEN_FAMILIAL THEN
        RAISE PB_LIEN_FAMILIAL;
        
  end;
  
  --Procedure enlever_lien_familial supprime le lien entre les 2 adhérents (indépendamment de l’ordre entre adh1 et adh2). S’il n’y a aucun lien entre ces 2 adhérents, on déclenche l’exception PB_LIEN_FAMILIAL.
  procedure enlever_lien_familial(un_adherent projet_adherent.id_adherent%type, un_autre projet_adherent.id_adherent%type) is
    lien NUMBER;
    second_lien NUMBER;
  begin
    
    --On récupére le premier lien possible
    SELECT COUNT(*) INTO lien FROM projet_famille WHERE(id_adherent = un_adherent AND id_proche = un_autre);
    BEGIN
       --S'il n'existe pas alors on vérifie le second, sinon on le supprime et on termine (puisque si un lien existe dans l'autre sens, la fonction précédente ne l'ajoute pas).
       IF lien = 0 THEN 
          SELECT COUNT(*) INTO second_lien FROM projet_famille WHERE (id_adherent = un_autre AND id_proche =un_adherent );
              --Si le second lien n'existe pas, on léve une erreur, sinon on supprime le lien.
              IF second_lien = 0 THEN
                  RAISE PB_LIEN_FAMILIAL;
              ELSE
                  DELETE FROM projet_famille WHERE (id_adherent = un_autre AND id_proche = un_adherent); 
              END IF;
       ELSE 
          --Si le premier existe, on le supprime.
          DELETE FROM projet_famille WHERE (id_adherent = un_adherent AND id_proche = un_autre);
       END IF;
    END;
    
    EXCEPTION
      WHEN PB_LIEN_FAMILIAL THEN
        RAISE PB_LIEN_FAMILIAL;
  end;
  
  --Procedure inscription inscrit un adherent pass� en parametre � une activit�. 
  --  Si l'adehrent ou l'activite n'existe pas, le programme d�clenche une ADHERENT_INCONNU exception (respct ACTIVITE_INCONNUE exception).
  --  Si l'activite a plus d'inscrit que de capacite nous declenchons une exception GROUPE_PLEIN.
  --  Si l'adherent n'est pas dans la tranche d'age de l'ectivite nous declencherons une exception ERREUR_AGE.
  procedure inscription(un_adherent projet_adherent.id_adherent%type, une_activite projet_activite.id_activite%type) is 
    adher NUMBER;
    acti NUMBER;
    nb_deja_inscrit PROJET_ACTIVITE.nb_inscrit%type;
    nb_max PROJET_ACTIVITE.capacite%type;
    age_adh PROJET_ADHERENT.date_naiss%type;
    age PROJET_ACTIVITE.age_min%type;
    age_minimum PROJET_ACTIVITE.age_min%type;
    age_maximum PROJET_ACTIVITE.age_max%type;
    famille PROJET_ADHERENT.id_adherent%type;
  begin
    SELECT COUNT(*) INTO adher FROM projet_adherent WHERE id_adherent = un_adherent;
    BEGIN
      --Nous commencons par verifier que l'adherent et l'activite existent bien.
      IF adher = 0 THEN
       RAISE ADHERENT_INCONNU;
      END IF;
    END;
    
    SELECT COUNT(*) INTO acti FROM projet_activite WHERE id_activite = une_activite;
    BEGIN
      IF acti = 0 THEN
       RAISE ACTIVITE_INCONNUE;
      END IF;
    END;
    
    --Si les deux existent on verifie que l'activite peut accueillir l'adherent.
    SELECT nb_inscrit INTO nb_deja_inscrit FROM projet_activite WHERE id_activite = une_activite;
    SELECT capacite INTO nb_max FROM projet_activite WHERE id_activite = une_activite;
    BEGIN
      IF nb_deja_inscrit >= nb_max THEN
        RAISE GROUPE_PLEIN;
      END IF;
    END;
    
    --On verifie enfin que l'adherent est dans la bonne tranche d'age.
    SELECT date_naiss INTO age_adh FROM PROJET_ADHERENT WHERE id_adherent = un_adherent;
    SELECT age_min INTO age_minimum FROM PROJET_ACTIVITE WHERE id_activite = une_activite;    
    SELECT age_max INTO age_maximum FROM PROJET_ACTIVITE WHERE id_activite = une_activite;
    BEGIN
      IF NOT(to_number(to_char((sysdate), 'YYYY'))-to_number(to_char((age_adh), 'YYYY')) BETWEEN age_minimum AND age_maximum) THEN 
        RAISE ERREUR_AGE;
      END IF;
    END;
    
    --Si tout est bon on inscfrit la personne en pensant a verifier si elle a un lien avec une personne inscrite.
    SELECT id_adherent INTO famille FROM projet_famille WHERE id_proche = un_adherent OR id_adherent = un_adherent;
    SELECT id_adherent INTO famille FROM PROJET_INSCRIPTION WHERE une_activite = id_activite AND id_adherent = famille;
    INSERT INTO projet_inscription VALUES (une_activite, un_adherent, (TARIF_ACTIVITE - (TARIF_ACTIVITE/100 * REDUCTION)));
    
    EXCEPTION
      WHEN ADHERENT_INCONNU THEN
        RAISE ADHERENT_INCONNU;
      WHEN ACTIVITE_INCONNUE THEN
        RAISE ACTIVITE_INCONNUE;
      WHEN GROUPE_PLEIN THEN
        RAISE GROUPE_PLEIN;
      WHEN ERREUR_AGE THEN
        RAISE ERREUR_AGE;
      WHEN NO_DATA_FOUND THEN
        INSERT INTO projet_inscription VALUES(une_activite, un_adherent, TARIF_ACTIVITE);            
  end;

  --Procedure desinscription supprime une adherent d'une activite. 
  --  Si l'adherent n'est pas inscrit dans l'activit� on declenche ERREUR_INSCRIPTION.
  --  Si l'adherent est bien dans l'activite et qu'il a bien pay� un tarif plein on le d�sinscrit. Alors si de sa famille profite d'une reduction on le repasse au tarif plein.
  procedure desinscription(un_adherent adherent.id_adherent%type, une_activite activite.id_activite%type) is
    adh_dans_acti NUMBER;
    famille NUMBER;
    tarifIscr projet_inscription.tarif%type;
  begin
    --On verifie que l'adherent et l'activite existe.
    SELECT COUNT(*) INTO adher FROM projet_adherent WHERE id_adherent = un_adherent;
    BEGIN
      --Nous commencons par verifier que l'adherent et l'activite existent bien.
      IF adher = 0 THEN
       RAISE ADHERENT_INCONNU;
      END IF;
    END;
    
    SELECT COUNT(*) INTO acti FROM projet_activite WHERE id_activite = une_activite;
    BEGIN
      IF acti = 0 THEN
       RAISE ACTIVITE_INCONNUE;
      END IF;
    END;
    
    -- Si l'adherent n'est pas dans l'activite on leve une erreur.
    SELECT COUNT(*) INTO adh_dans_acti FROM projet_inscription WHERE id_adherent = un_adherent;
    BEGIN
      IF adh_dans_acti = 0 THEN
        RAISE ERREUR_INSCRIPTION;
      END IF;
    END;
    
    DELETE FROM projet_inscription WHERE id_adherent = un_adherent;
    
    --Ensuite en change les tarifs.
    SELECT tarif INTO tarifIscr FROM projet_inscription WHERE id_adherent = un_adherent;
    IF tarifIscr <> TARIF_ACTIVITE THEN
     SELECT COUNT(*) INTO famille FROM projet_famille WHERE un_adherent = id_adherent OR un_adherent = id_proche;
      IF famille <> 0 THEN
        WHILE famille <> 0
        LOOP
          
          famille := famille -1;
        END LOOP;
      END IF;
    END IF;
  
     EXCEPTION
      WHEN ADHERENT_INCONNU THEN
        RAISE ADHERENT_INCONNU;
      WHEN ACTIVITE_INCONNUE THEN
        RAISE ACTIVITE_INCONNUE;
      WHEN ERREUR_INSCRIPTION THEN
        RAISE ERREUR_INSCRIPTION;
  end;

end pack_adherent;