#include <stdlib.h>
#include <stdio.h>
#include "quicksort.h"
#include "macro.h"
#include "tab_alea.h"


int main (void){
  int* tab_test;
  int i, t;
  tab_test = tab_alea();
  quicksort_int(tab_test, TABSIZE);
  for (i = 0; i < TABSIZE; i++){
    t = tab_test[i];
    printf("%d", t); putchar(' '); putchar(';'); putchar(' ');
  }
  putchar('\n');
  return 0;
}
