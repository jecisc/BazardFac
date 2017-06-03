
#include <stdlib.h>
#include <stdio.h>
#include "tab_alea.h"
#include "macro.h"
int rand (void);

int tab_test[TABSIZE];


int* tab_alea (void){
  
  int init_tab;
  for (init_tab = 0; init_tab < TABSIZE; init_tab++) {
    tab_test[init_tab] = rand()%100 ;
  }
  return tab_test;
}
