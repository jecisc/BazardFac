#include <stdlib.h>
#include <stdio.h>
#include "quicksort.h"



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

/*
void swap (int size, void *elem1, void *elem2){
  int i;
  void *tmp;
  (void *) ((char *)tmp) = (void *)  malloc (1);
  for (i = 0; i< size ; i++){
    (void *) ((char *)tmp) = (void *) ((char *)elem1 + i);
    (void *) ((char *)elem1 +i) = (void *) ((char *)elem2 +i);
    (void *) ((char *)elem2 + i) = (void *) ((char *)tmp);
  }
  free(tmp);

  }*/

void swap (void *elem1, void *elem2){ 
  void * adress;
  adress = NULL;
  adress = elem1;
  elem1 = elem2;
  elem2 = adress;
}

int partitionner (void *base, int nelem, int size, int(*compar)(const void *, const void *), void *ind_pivot){
  int j, i;
  void *fin;
  void *actuel;
  void *intern;
  
  fin =(void *) ((char *)base + (nelem * size));
  /*échange du pivot avec le dernier élément.*/
  swap (ind_pivot, fin);
  j = 0;
  intern = base;
  /*Pour tous les éléments du tableau on les compare au pivot, s'ils sont inférieurs ont les met au début du tableau.*/
  for (i = j; i < nelem; i++){
    actuel = (void *) ((char *)base + (i*size) );
    if (compar(actuel, fin)== -1 ){
      swap (actuel , intern );
      j++;
      intern = (void *) ((char *)base + (j * size));
    }
  }
  /*Enfin on replace le pivot derrière les éléments plus petits.*/
  swap (fin, intern)  ;
  return j;
}


void quicksort(void *base, int nelem, int size,	int(*compar)(const void *, const void *)){
  int i;
  void *ind_pivot;
  ind_pivot =  base;

  if (nelem > 1) {
    i = partitionner (base, nelem, size, compar, ind_pivot);
    ind_pivot = (void *) ((char *)base + (i*size));
    quicksort(base, i -1 , size, compar);
    quicksort(((void *) ((char *)base + (i*size) )), (nelem - 1), size, compar);
  }

}
