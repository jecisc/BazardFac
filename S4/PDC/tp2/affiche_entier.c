#include <stdio.h>
#include "mcu_readl.h"
#include "mcu_fatal.h"
#include "mcu_macros.h"
#include "mcu_affiche_entier.h"



extern void affiche_entier(int numero)
{
  int i;
 
  i = numero%10;
  if (numero == 0){
    return;
  }
  affiche_entier(numero/10);
  putchar('0' + i);
}
