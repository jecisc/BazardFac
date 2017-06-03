#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char **charger(FILE * fichier){
  char * tab[256]; char tmp; int i, j; char *ligne;
  i=0; j=0;
  tab= (char**) malloc(sizeof(char*)*256);
  if (tab == NULL){
    printf ("Erreur");
    exit(1);
  }
  
  fread(fichier,"r");
  
  for (i=0; i<256; i++){
    ligne= (char*) malloc (sizeof(char)*256);
    if (ligne == NULL){
      printf ("Erreur");
      exit(1);
    }
    fgetc(fichier);
    tmp= fgetc(fichier);
    while (tmp!= '\n'){
      ligne[i] = tmp;
      tmp = fgetc(fichier);
      i++;
    }
    ligne[i] = '\0';
    i =0;
    tab[j] = ligne;
    j++;
  }
  return tab ;
}

char * byte_to_string(FILE *fichier){
  char tmp, *res; int i, cpt; char bit;
  i=0;
  fread( fichier, "r");
  res = (char) malloc (sizeof(char));
  tmp = fgetc(f);
  while (tmp != EOF){
    i++;
    res = (char *) realloc (res, i*8*sizeof(char)+1);
    for(cpt=0; cpt<8;cpt++){
      bit= testebit(tmp,cpt);
      res[(i-1)*8+cpt]=bit;
    }
    tmp= fgetc(fichier);
  }
  res[i*8]='\0';
  return res;
}

int retrouvechar ( char *pres, char **codage){
  int i, j, cpt; 
  char *res; 
  res= *pres;
  i=0; j=0; cpt=0;
  while((unsigned int)j == strlen(res[i])){
    if(res[i] == codage[cpt][j]){
      i++; 
      j++;
    }
    else{
      i = 0; 
      j=0; 
      cpt++;
    }
  }
  *pres += i+1;
  return cpt;
}

char *dechiffrer(FILE *fichier){
  char** codage; char *res, *resultat; int i, tmp;
  i=0;
  codage = charger(fichier);
  resultat = (char *) malloc (sizeof(char)*strlen(res));
  while(strlen(res)!= 0){
    tmp = retrouvechar(res, codage);
    if(tmp != -1)
      resultat[i] = (char) tmp;
    i++;
      }
  return resultat;
}
      
      
