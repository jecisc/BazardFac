#include <stdio.h>
#include "mcu_macros.h"
#include "mcu_affiche_entier.h"

int main (void) {
  int cpt;
  char carac;
  cpt = 0;
  carac = getchar();

  while (carac != EOF ){
    cpt++;
    carac = getchar();
  }
  affiche_entier(cpt);
  putchar('\n');
  return 0;
}
