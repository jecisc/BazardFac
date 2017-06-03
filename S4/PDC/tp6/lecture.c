#include <stdio.h>

int lecture (const char *filename){
  FILE *file;
  rewind (file);

  return fclose(file);
  
}
