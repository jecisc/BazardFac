#include <stdio.h>
#include "mcu_macros.h"
#include "mcu_affiche_entier.h"
#include "mcu_fatal.h"
#include "mcu_readl.h"


// affiche un int en char
char calcul_char (int val){
  if ((val <= 9) && (val >= 0))
    return ('0' + val );
  else
    return ('A' - (val - 10));
}

// affiche l'offset
void offset (char tab[], int val){
  int fin, i, j;
  tab[6]=0;
  fin =5;
  while (val != 0){
    tab[fin] = calcul_char (val%16);
    fin--;
    val = val/16;
  }
  for (i=0; i <= fin ; i++){
    tab[i]='0';
  }
  for (j = 0; j < 7; j++)
    putchar (tab[j]);
}

// convertie et affiche un char en hexadecimal
void imprime_hexa ( char c){
  int reste, chiffre; 
  char premier, second;
  chiffre = c;
  reste = chiffre%16;
  switch(reste){
  case 0 : premier = '0'; break;
  case 1 : premier = '1'; break;
  case 2 : premier = '2'; break;
  case 3 : premier = '3'; break;
  case 4 : premier = '4'; break;
  case 5 : premier = '5'; break;
  case 6 : premier = '6'; break;
  case 7 : premier = '7'; break;
  case 8 : premier = '8'; break;
  case 9 : premier = '9'; break;
  case 10 : premier = 'A'; break;
  case 11 : premier = 'B'; break;
  case 12 : premier = 'C'; break;
  case 13 : premier = 'D'; break;
  case 14 : premier = 'E'; break;
  default : premier = 'F'; break;
  }
  chiffre = chiffre/16;
  reste = chiffre%16;
  switch(reste){
  case 0 : second = '0'; break;
  case 1 : second = '1'; break;
  case 2 : second = '2'; break;
  case 3 : second = '3'; break;
  case 4 : second = '4'; break;
  case 5 : second =  '5'; break;
  case 6 : second = '6'; break;
  case 7 : second = '7'; break;
  case 8 : second = '8'; break;
  case 9 : second = '9'; break;
  case 10 : second = 'A'; break;
  case 11 : second = 'B'; break;
  case 12 : second = 'C'; break;
  case 13 : second = 'D'; break;
  case 14 : second = 'E'; break;
  default : second = 'F'; break;
  }
  putchar(second);
  putchar(premier);

}

// affiche le code hexa d'une ligne
void affiche_hexa (char tab[], int j){
  int i, i2;
  for (i =0 ; i <= j; i++){
    if ((i%2) == 0)
      putchar(' ');
    imprime_hexa((tab[i]));    
  }
  for (i2 = j; i2 < 16; i2++){
    if ((i2%2)==0)
      putchar(' ');
    putchar(' ');
  }
}
    
// affiche les 16 caractères d'une ligne
void affiche_normal (char tab[], int j){
  int i;
  for (i = 0; i <= j; i++){
    if (tab[i] < 32 )
      putchar('.');
    else 
      putchar(tab[i]);
  }
}

// Main
int main (void){
  char tab[16];
  char tab2[7];
  int i, j, val;
  char carac;
  
  carac = getchar();
  val = -16;
  
  while (carac != EOF) {
    j =-1;
    for (i=0; i<=15; i++){
      if(carac != EOF){
	tab[i] = carac;
	j++;
      }
      else break;
      carac = getchar();
    }
    
    val = val+16;
    
    offset(tab2, val);
    putchar (':');
    putchar (' ');
    affiche_hexa(tab, j);
    putchar(' ');
    affiche_normal(tab, j);
    putchar ('\n');
  }
  
  return 0;
}


