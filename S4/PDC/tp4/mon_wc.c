#include <stdio.h>
#include "mcu_macros.h"
#include "mcu_affiche_entier.h"
#include "mcu_fatal.h"
#include "mcu_wc.h"
#include "mcu_wl.h"
#include "mcu_ww.h"

void imprime (char tab[], int lon){ /* permet d'imprimer une phrase */
  int i;
  for (i = 0; i <lon; i++)
    putchar(tab[i]);
}

int revoitErreur (char tab[], int lon){ /* permet d'imprimer l'utilisation de notre main */
  int i;
  for (i = 0; i <lon; i++)
    putchar(tab[i]);
  putchar('\n');
  return 1;
}

int main (int argc, char *argv[]) {
  if (argc != 2) /* on verifie qu'il n'y a bien qu'un argument. */
    return revoitErreur("usage: il ne faut qu'un argument [-clw].", 40);
  else {
    if (argv[1][0] == '-'){ /* on verifie que le premier caractere est bien un tiret */ 
      switch(argv[1][1]){ /*appel de la bonne fonction en fonction du second caractere */
      case 99 : return wc(); break;
      case 108: return ww(); break;
      case 119: return wl(); break;
      default: imprime("wc: illegal option --", 21) ; putchar(argv[1][1]); putchar('\n'); return revoitErreur("usage: wc [-clw]", 16);
      }
    }
    else{
      return revoitErreur("usage: il faut qu'un argument correct [-clw].", 44);
    }
  }
}
