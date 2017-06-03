#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "lecture.h"
#include "arbre.h"


void frequence(freq_t tab, FILE *file){
  char c; int cpt, i;
  cpt = 0;
  c = fgetc(file);
  /* Tant que l'on arrive pas a la fin du fichier on incrémente les cases correspondant au caractere.*/
  while( c != EOF){
    cpt++;
    tab[((int) c)] =  tab[((int) c )] + 1; 
  }
  /* Puis on divise par le nombre de caractere total pour avoir une fréquence. */
  for(i = 0; i < ((1<<8) -1); i++){
    if (tab[i] != 0)
      tab[i] = tab[i]/cpt;
      }
}

/*Fonction permettant de construire un nouvel arbre binaire n'ayant qu'une racine*/
arbrebinaire_t construirebase(int lettre, float frequ){
  arbrebinaire_t newArbre;
  noeud_t racineA; 
  /* On cree notre noeud qui sera la racine de notre nouvel arbre ainsi que l'arbre*/
  newArbre = (arbrebinaire_t) malloc (sizeof(arbrebinaire_t));
  racineA = (noeud_t) malloc (sizeof (noeud_t));
  racineA -> lettre = lettre;
  racineA -> freq = frequ;
  newArbre -> racine = racineA;
  newArbre -> filsg = NULL;
  newArbre -> filsd = NULL;
  return newArbre;
}

/*Fonction permettant de créer un nouvel arbre en fusionnant deux arbres. */
arbrebinaire_t fusionArbres(arbrebinaire_t fgauche, arbrebinaire_t fdroit){
  arbrebinaire_t newArbre;
  noeud_t racineA; 

 /* On cree notre noeud qui sera la racine de notre nouvel arbre */
  newArbre = (arbrebinaire_t) malloc (sizeof(arbrebinaire_t));
  racineA = (noeud_t) malloc (sizeof (noeud_t));

  /*on remplit la racine */
  racineA -> lettre = -1;
  racineA -> freq = (fgauche-> racine -> freq) + (fdroit -> racine -> freq);
  
  /* on crée le nouvel arbre */
  newArbre -> racine = racineA;
  newArbre -> filsg = fgauche;
  newArbre -> filsd = fdroit;
  return newArbre;
}

/* fonction d'echange de deux elements dans les adresses memoires */
void swap (void *elem1, void *elem2){ 
  void * adress;
  adress = NULL;
  adress = elem1;
  elem1 = elem2;
  elem2 = adress;
}


/*Fonction de comparaison pour utiliser le quicksort generique */
int compare_arbre(arbrebinaire_t a1, arbrebinaire_t a2){
  float f1, f2;
  f1 = a1 -> racine -> freq;
  f2 = a2 -> racine -> freq;
  if( f1 > f2)
    return 1;
  else
    {
      if (f2 > f1)
	return -1;
      else
	return 0;
    }
}

/* Pour construire le codage je vais construire un tableau d'arbre puis la parcourir pour fusionner les deux arbres avec les plus petites fréquences. */
arbrebinaire_t construirecodage(freq_t tab_f){
  int nombre_arbre;
  arbrebinaire_t tabArbre[256];
  int i;
  nombre_arbre = 256;
  /* initialisation du tableau d'arbre trie a partir de la table de frequence */
  for (i = 0; i < nombre_arbre; i++){
    tabArbre[i] =  construirebase( i, tab_f[i]);
  }   
  qsort((void *) tabArbre[0], nombre_arbre,  sizeof(arbrebinaire_t),(int(*)(const void*,const void*)) compare_arbre);
  /* Maintenant que le tableau est initialiser on va toujours fusionner les deux premiers arbres puis retrier le tableau de taille nombre_arbre. Nombre_arbre sera reduit au fur et a mesure.*/
  while(nombre_arbre > 1){
    tabArbre[0] = fusionArbres (tabArbre[0], tabArbre[1]);
    swap(tabArbre[1], tabArbre[nombre_arbre -1]);
    nombre_arbre--;
    qsort((void *) tabArbre[0], nombre_arbre,  sizeof(arbrebinaire_t),(int(*)(const void*,const void*)) compare_arbre);    
    }

    /*Quand l'arbre est complet on le retourne. */
  return tabArbre[0];
}

/* Fonction permettant a partir d'un arbre de remplire un tableau de taille 256 par les chaines correspondant au codage des 256 caractere de la table ASCII a partir d'un arbre de Huffman */
void remplissageTable (arbrebinaire_t arbre, codingtable_t table, char* valeurCourante){
  /* Si l'arbre n'a pas de fils, alors c'est un caractere, on complete alors la table. */
  if ( (arbre -> filsg == NULL) && (arbre -> filsd == NULL)){
    table[(arbre -> racine -> lettre)] = valeurCourante;
  }
  else 
    /* Sinon on complete la valeur courante et on appel recursivement la fonction */
    {
      if (!(arbre -> filsg == NULL)) 
	remplissageTable((arbre -> filsg), table, (strcat (valeurCourante, "0")));
      if (!(arbre -> filsd == NULL)) 
	remplissageTable((arbre -> filsd), table, (strcat (valeurCourante, "1")));
    }
  
}


void tabledecodage(arbrebinaire_t arbre,FILE * fichier,codingtable_t table){
  int i;
  /* remplie le codingtable */
  remplissageTable(arbre, table, "");
  for (i = 0; i < 256; i++)
    fprintf(fichier,"%c=%s\n", (char) i, table[i]) ;
}


