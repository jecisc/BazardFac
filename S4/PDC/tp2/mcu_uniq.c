#include <stdio.h>
#include "mcu_macros.h"
#include "mcu_affiche_entier.h"
#include "mcu_fatal.h"
#include "mcu_readl.h"

int main (void){
  int vrai, res, res2, j, u;
  char carac;
  char line[MAXLINE];
  char line2[MAXLINE];
  
  res=readl(line);

  if (res != EOF){
  
    u = 0;
    while (u < res){
      carac = line[u];
      putchar(carac);  
      u++;
    }
    putchar('\n');

    
    res2= readl(line2);
    
    while (res2 != EOF) {
      vrai = 0;
      for (j = 0; j < res2; j++){
	if (line[j] != line2[j]){
	  vrai = 1;
	} 
	line[j] = line2[j];
      }
      
      if (vrai) {
	u = 0;
	 while (u < res2){
	   carac = line[u];
	   putchar(carac);
	   u++;
	 }
	 putchar('\n');
      }
	

      res2 = readl(line2);
    }
  }
  return 0;
}


