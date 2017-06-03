#include <stdio.h>

main
(void)
{
  char carac;
  char carac2; //caractère suivant carac si necessaire.
  carac=getchar();
  while (!(carac==-1)) // -1 = fin de fichier
    {
      if (carac == '/') // test si il est possible qu'il y ai un commentaire
	{
	  carac2=getchar();
	  if (carac2 == '*') // test s'il y a un commentaire en bloc ou de documentation
	    {
	      while (carac != '/' && carac2 != '*') // elimination du commentaire
		{
		  carac2=carac;
		  carac=getchar();
		}
	    }
	  else
	    {
	      if (carac2 == '/') // test s'il y a un commentaire en ligne
		{
		  while (carac != 10) //elimination de la ligne
		    {
		      carac = getchar(); 
		    }
		}
	      else 
		{
		  putchar(carac);
		  putchar(carac2);
		  carac=getchar();
		}
	    }
	    
	}
      else
	{
	  putchar(carac);
	  carac=getchar();
	}
    }

    return 0;
 
}
