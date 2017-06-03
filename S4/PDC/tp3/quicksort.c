#include <stdlib.h>
#include <stdio.h>
#include "quicksort.h"
#include "macro.h"



int partitionner_int (int *tab, int fin, int ind_pivot){
  int aux, j, i;
  /*échange du pivot avec le dernier élément.*/
  aux = tab[ind_pivot];
  tab[ind_pivot] = tab[fin-1];
  tab[fin-1] = aux;

  j = 0;
  
  /*Pour tous les éléments du tableau on les compare au pivot, s'ils sont inférieurs ont les met au début du tableau.*/
  for (i = j; i < fin; i++){
    if (tab[i] <= tab[fin-1]){
      aux = tab[i];
      tab[i] = tab[j];
      tab[j] = aux;
      j++;
    }
  }

  /*Enfin on replace le pivot derrière les éléments plus petits.*/
  aux = tab[fin-1];
  tab[fin-1] = tab[j];
  tab[j] = aux;
  
  return j;
}


void quicksort_int(int *tab, unsigned int nelem){
  int ind_pivot;
  ind_pivot = 0;

  if (nelem > 1) {
   ind_pivot = partitionner_int (tab, nelem, ind_pivot);
   quicksort_int(tab, ind_pivot-1);
   quicksort_int((tab + ind_pivot),(nelem - ind_pivot));
  }

}


/*_________________________________________________________________________________________________*/

void * partitionner (void *base, int nelem, int size, int(*compar)(const void *, const void *)){
  int aux, j, i;
  /*échange du pivot avec le dernier élément.*/
  aux = tab[ind_pivot];
  tab[ind_pivot] = tab[fin-1];
  tab[fin-1] = aux;
  j = 0;
  /*Pour tous les éléments du tableau on les compare au pivot, s'ils sont inférieurs ont les met au début du tableau.*/
  for (i = j; i < fin; i++){
    if (tab[i] <= tab[fin-1]){
      aux = tab[i];
      tab[i] = tab[j];
      tab[j] = aux;
      j++;
    }
  }
  /*Enfin on replace le pivot derrière les éléments plus petits.*/
  aux = tab[fin-1];
  tab[fin-1] = tab[j];
  tab[j] = aux;
  
  return j;
}


void quicksort(void *base, int nelem, int size,	int(*compar)(const void *, const void *)){
  void * ind_pivot;
  ind_pivot = base;

  if (nelem > 1) {
   ind_pivot = partitionner ();
   quicksort();
   quicksort();
  }

}
