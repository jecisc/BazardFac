#include <stdio.h>
#define MAXNOM 50
#define MAXNAT 30

enum domaine_e{
  litterature =1, 
  physique,
  chimie, 
  paix,
  physiologie
};

typedef enum domaine_e domaine_t;

enum genre_e{
  homme,
  femme,
  organisme
};

typedef enum genre_e genre_t;

struct Nomine_s{
  int date;
  domaine_t domaine;
  char nom_nomine[MAXNOM];
  int jour_naiss;
  int mois_naiss;
  int ann_naiss;
  char nationnalite[MAXNAT];
  genre_t genre;
};

/* Fonction entier pour récupérer un entier dans le document. */
int entier (){
  char c; int i;
  c= 'a' ; i = 0;
  while (42){
    c = getchar();
    if (c >= '0' && c <= '0')
      i = i * 10 + (c + '0');
    else if (c == ',')
      return i;
    else
      return -1;
  }
}

/* Fonction enChaine pour récupérer une chaine dans le document et la mettre dans un tableau passé en paramètre */
void enChaine (char tab[]){
  char c; int i;
  c = getchar(); i = 0;
  while (c != ','){
    tab[i] = c;
    i++;
    c = getchar();
  }
  tab[i] = '\0';
}

int construireTableaux(struct Nomine_s* nomine){
  int i ; int j;
  char c; 
  char tabnom[MAXNOM]; 
  char tabnat[MAXNAT];
  i = 0; 
  while(1){
    nomine[i].date= entier();

    c = getchar();
    switch(c){
    case 1 : nomine[i].domaine = litterature;
    case 2 : nomine[i].domaine = physique;
    case 3 : nomine[i].domaine = chimie;
    case 4 : nomine[i].domaine = paix;
    case 5 : nomine[i].domaine = physiologie;
    default : return -1;
    }
    getchar();

    enChaine(tabnom);
    for (j = 0 ; j < MAXNOM; j++){
    nomine[i].nom_nomine[j] = tabnom[j];
    }
    nomine[i].jour_naiss = entier();

    nomine[i].mois_naiss = entier();

    nomine[i].ann_naiss = entier();

    enChaine( tabnat);
    for (j = 0; j < MAXNAT; j++){
      nomine[i].nationnalite[j] =tabnat[j];
    }
    c = getchar();
    switch(c){
    case 'M' : nomine[i].genre = homme ; break ;
    case 'F': nomine[i].genre =femme ; break ;
    case 'O': nomine[i].genre =organisme ; break ;
    default: return -1;
    }
    getchar();

    c=getchar();

    if(c== EOF)
      return i +1;
    else if (c != '\n')
      return -1;

    i++;
      }
}

int CompareNomineParDateDeNaissance(struct Nomine_s * nomine, struct Nomine_s * nomine2){
  if (nomine[0].ann_naiss < nomine2[0].ann_naiss)
    return -1;
  else if (nomine[0].ann_naiss > nomine2[0].ann_naiss)
    return 1;
  else {
    if (nomine[0].mois_naiss < nomine2[0].mois_naiss)
      return -1;
    else if (nomine[0].mois_naiss > nomine2[0].mois_naiss)
      return 1;
    else {
      if (nomine[0].jour_naiss < nomine2[0].jour_naiss)
	return -1;
      else if (nomine[0].jour_naiss > nomine2[0].jour_naiss)
	return 1;
      else 
	return 0;
    }
  }
}
