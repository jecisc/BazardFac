#include <stdio.h>
#include "mcu_macros.h"
#include "mcu_affiche_entier.h"
#include "mcu_fatal.h"
#include "mcu_readl.h"

int wl(void){
  int cpt, res;
  char line[MAXLINE];
  cpt = 0;
  res = readl(line);
  
  while (res != EOF) {
    cpt++;
    res=readl(line);
  }
  affiche_entier(cpt);
  putchar('\n');
  return 0;
}

/*int main (void) {
  wl();
  }*/
