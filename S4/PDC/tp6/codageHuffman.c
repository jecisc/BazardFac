#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "lecture.h"
#include "arbre.h"

void positionner_bit (unsigned char *c,unsigned char pos,unsigned char bit) 
{
  if(bit=='1')
   *c=(*c)|(1<<pos);
  else *c=(*c)&~(1<<pos);
   return ;
}

int main(int argc, char *argv[]){
  freq_t tableFreq;
  FILE *out;
  arbrebinaire_t arbre;
  codingtable_t table;
  int j;
  if (argc != 2)
  return 1;
  for (j = 0; j < 255; j++)
    tableFreq[j] = 0;

    out = fopen(strcat(argv[1], "_huffman"), "w");

  lecture(argv[1]);
  frequence(tableFreq, stdout);
  arbre = construirecodage(tableFreq);
  tabledecodage(arbre, out, table);
  fputc('\n', out);
  fputc('\n', out);
  
  return fclose(out);
  
  
}
