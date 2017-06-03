#include <stdio.h>

main
(void)
{
  char carac;
  char carac2; 
  carac=getchar();
  while (!(carac==-1)) 
    {
      if (carac == '/') 
	{
	  carac2=getchar();
	  if (carac2 == '*') 
	    {
	      while (carac != '/' && carac2 != '*') 
		{
		  carac2=carac;
		  carac=getchar();
		}
	    }
	  else
	    {
	      if (carac2 == '/') 
		{
		  while (carac != 10) 
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
