#include <stdlib.h>
#include <stdio.h>
#include "quicksort.h"
#include "dico4lettres.h"

/*Fonction de comparaison servant dans la fonction de tri du dico. 
Renvoit 0 si les deux chaines sont identiques, 1 si la première est supérieurs à la seconde et -1 sinon. */
int compare (void * strg1, void * strg2){ 
  char car1, car2;
  int i;
  i = 0;
  car1= (char) ((char *)strg1 +i);
  car2= (char) ((char *)strg2+i);

  while (i < 4){ 
    
    if (car1 > car2) /* Si la première chaine est supérieure à la seconde, on renvoit 1 */
      return 1;
    else if (car2> car1) /* Si on est dans le cas inverse on renvoit -1 */
      return -1;

    /* Sinon on continu */

    i++;
    car1= (char) ((char *)strg1 +i);
    car2= (char) ((char *)strg2 +i);
  }

  return 0;
}

 


int main () {
  quicksort(dico, TAILLE_DICO, 5, compare);
  return 0;
  }
