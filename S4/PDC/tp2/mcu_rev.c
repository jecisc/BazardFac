#include <stdio.h>
#include "mcu_macros.h"
#include "mcu_affiche_entier.h"
#include "mcu_fatal.h"
#include "mcu_readl.h"

int main (void) {
  int cpt;
  int res;
  char line[MAXLINE];
  cpt = 0;
  res = readl(line);
  
  while (res != EOF) {
    ++cpt;
    while (res != 0){
      --res;
      putchar(line[res]);
    }
    putchar('\n');
    res=readl(line);
  }
  return 0;
 
}
