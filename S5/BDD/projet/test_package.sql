set serveroutput on;
  execute pack_adherent.lien_familial(2,4,'conjoint');
set serveroutput off;
/
set serveroutput on;
  execute pack_adherent.lien_familial(1,3,'parent');
set serveroutput off;
/
set serveroutput on;
  execute pack_adherent.lien_familial(5,9,'soeur');
set serveroutput off;
/
set serveroutput on;
 execute pack_adherent.lien_familial(9,5,'frere');
set serveroutput off;
/
/* --------------------------------------------------------------------------- */
set serveroutput on;
 execute pack_adherent.enlever_lien_familial(5,9);
set serveroutput off;
/
/*-----------------------------------------------------------------------------*/
set serveroutput on;
 execute pack_adherent.inscription(1, 1);
set serveroutput off
/*-----------------------------------------------------------------------------*/