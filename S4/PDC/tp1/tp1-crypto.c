#include <stdio.h>


// C.U. : Le premier caractère est la cle de chiffrement
main
(void)
{
  char carac;
  char cle;
  cle = getchar();
  carac=getchar();
  while (!(carac==-1))
    {
      carac= carac ^cle;
      putchar(carac);
      carac=getchar();
    }

    return 0;
 
}
