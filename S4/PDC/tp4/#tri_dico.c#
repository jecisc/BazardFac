#include <stdlib.h>
#include <stdio.h>
#include "dico4lettres.h"

#define SIZE 5

/*Fonction de comparaison servant dans la fonction de tri du dico. 
Renvoit 0 si les deux chaines sont identiques, 1 si la première est supérieurs à la seconde et -1 sinon. */
int compare(char *strg1, char *strg2){ 
  char car1, car2;
  int i;
  i = 0;
  car1= (*strg1 +i);
  car2= (*strg2+i);

  while (i < 4){ 
    
    if (car1 > car2) /* Si la première chaine est supérieure à la seconde, on renvoit 1 */
      return 1;
    else if (car2> car1) /* Si on est dans le cas inverse on renvoit -1 */
      return -1;

    /* Sinon on continu */

    i++;
    car1=(*strg1 +i);
    car2=(*strg2 +i);
  }

  return 0;
}


void swap (char *p1, char *p2) { 
  char tmp; 
  int i;
  putchar(p1[0]);putchar(p2[0]);putchar('\n');
  for(i=0; i< SIZE; i++){ 
    tmp = p1[i];
    p1[i]= p2[i]; 
    p2[i] = tmp;
  } 
}

int partitionner (void *base, int nelem, void *ind_pivot){
  int j, i;
  void *fin;
  void *actuel;
  void *intern;
  
  fin =(void *) ((char *)base + (nelem * SIZE));
  /*échange du pivot avec le dernier élément.*/
  swap (ind_pivot, fin);
  j = 0;
  intern = base;
  /*Pour tous les éléments du tableau on les compare au pivot, s'ils sont inférieurs ont les met au début du tableau.*/
  for (i = j; i < nelem; i++){
    actuel = (void *) ((char *)base + (i*SIZE) );
    if (compare(actuel, fin)){
      swap (actuel , intern );
      j++;
      intern = (void *) ((char *)base + (j * SIZE));
    }
  }
  /*Enfin on replace le pivot derrière les éléments plus petits.*/
  swap (fin, intern)  ;
  return j;
}


void quicksort(void *base, int nelem ){
  int i;
  void *ind_pivot;
  ind_pivot =  base;

  if (nelem > 1) {
    i = partitionner (base, nelem, ind_pivot);
    ind_pivot = (void *) ((char *)base + (i*SIZE));
    quicksort(base, i -1);
    quicksort(((void *) ((char *)base + (i*SIZE) )), (nelem - 1));
  }

}

int main () {
  int i, j;
  quicksort(dico, TAILLE_DICO);
  for (i = 0; i< TAILLE_DICO; i++){
    for (j= 0; j < SIZE-1; j++){
      putchar(dico[i][j]);
      putchar('\n');
	}
      }
  return 0;
  }
