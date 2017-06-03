#include <stdio.h>
#include <stdlib.h>
#include "mcu_fatal.h"

extern void 
fatal
(int assert, const char *message, int status)
{
  if (!assert)
    {
      int cpt;
      cpt = 0;
      while (message[cpt] != '\0') 
	{
	  putc(message[cpt], stderr);
	  cpt++;
	}
      exit(status);
    }
}
