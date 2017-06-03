int partitionner (int *base, int fin, int ind_pivot, int(*compar)(const void *, const void *){
  int aux, j, i;
  /*échange du pivot avec le dernier élément.*/
  aux = *base;
  *base = *base + fin;
  *base + fin = aux;

  j = 0;
  
  /*Pour tous les éléments du tableau on les compare au pivot, s'ils sont inférieurs ont les met au début du tableau.*/
  for (i = j; i < fin; i++){
    if (compar (*base + i, *base + fin) == -1){
      aux = *base + i;
      *base + i  = *base + j;
      *base + j = aux;
      j++;
    }
  }

  /*Enfin on replace le pivot derrière les éléments plus petits.*/
  aux = *base + fin;
  *base + fin = *base + j;
  *base + j = aux;
  
  return j;
}

  void quicksort(void *base, int nelem, int size, int(*compar)(const void *, const void *){
      void ind_pivot;
      ind_pivot = 0;

      if (nelem > 1) {
	ind_pivot = partitionner_int (tab, nelem, ind_pivot);
	quicksort_int(tab, ind_pivot-1);
	quicksort_int((tab + ind_pivot),(nelem - ind_pivot));
      }

    }
