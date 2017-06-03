 #include <stdio.h>
#include <stdlib.h>
#include "mcu_readl.h"
#include "mcu_fatal.h"
#include "mcu_macros.h"

extern int readl(char line[])
{
  int cpt;
  char carac;

  cpt = 0;
  carac = getchar();
  
  while ((carac != '\n') && (carac != EOF) )
    {
      line[cpt]=carac;
      cpt++; 
      if (cpt == (MAXLINE))
	fatal ( 1==2, "Nombre max de caractere depasse. \n", 1);
      carac= getchar();
    }
  line[cpt]= '\0';
  if (carac == EOF)
      return EOF;
  else
      return cpt;
}







