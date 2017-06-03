#include <stdlib.h>
#include <stdio.h>
#include "monmalloc_infra.h"
#include "monmalloc_afaire.h"

void inserer(liste_t *list, liste_t cell)  
{
  int size_cell, size_elem, fin;
  liste_t liste;
  liste = *list;

  /* Fin est une variable permettant de savoir si notre cellule a été insérée ou non. Elle servira à stopper la boucle while qui suivra.*/
  fin = 1;

  /*On prend en compte le cas ou list est vide. Cell est alors la seule cellule de la liste */
  if(liste == NULL){
    *list = cell;
  }
  else{

    /* size_cell est la taille de l'allocation mémoire de la cellule que l'on souhaite insérer. */
    size_cell = (unsigned int)cell->userspacestop - (unsigned int)cell->userspacestart; 
    size_elem = (int)liste->userspacestop - (int)liste->userspacestart;

    /* On vérifie si la taille de la cellule est inférieure à la taille de la plus petite cellule de la liste. Si oui, on l'insére en tête.*/
    if (size_cell < size_elem){
      cell->next = liste;
      *list = cell;
    }
    else{
      /* Sinon on cherche ou elle est dans la liste et on l'insère.*/
      while((liste->next !=NULL) && fin ){
	size_elem = (unsigned int) liste->next->userspacestop -  (unsigned int) liste->next->userspacestart;
	if (size_cell < size_elem){
	  liste->next = cell;
	  cell->next = liste->next;
	  fin = 0;
	}
	else
	  liste = liste->next;
      }
      /* On vérifie enfin si la cellule a put être insérée ou non, si elle n'a pas été insérée ont l'insère à la fin. */
      if (fin){
	liste->next = cell;
	cell->next = NULL;
      }
    }
  }
}



liste_t extraire(liste_t *list, unsigned int size ) 
{
  liste_t liste, tmp;
  unsigned int size_cell;
  liste = *list;

  /*On vérifie a la base que la liste n'est pas vide, si elle l'est on retourne NULL*/
  if (liste == NULL)
    return NULL;

  /* Si la première cellule a une taille suffisante on change le pointeur de pointeur pour la cellule suivante, on supprime le suivant de notre première cellule et on la renvoit.*/
  size_cell = (unsigned int) liste->userspacestop - (unsigned int)liste->userspacestart;
  if (size_cell >= size){
    *list = liste->next;
    liste->next = NULL;
    return liste;
  }
  else{
    /* Sinon on cherche la bonne cellule, on fait en sorte que la cellule précédente ait pour suivant la cellule encore suivante ou NULL si elle est en avant dernière position puis ont supprime le next de notre cellule et on la renvoit*/
    while(liste->next != NULL){
      size_cell = (unsigned int) liste->next->userspacestop - (unsigned int)liste->next->userspacestart;
      if(size_cell >= size ){
	tmp = liste->next;
	liste->next = liste->next->next;
	tmp -> next = NULL;
	return tmp;
      }

      liste=liste->next;
    }
    /* si aucune cellule ne correspond on renvoit NULL*/
    return NULL;
  }
}

