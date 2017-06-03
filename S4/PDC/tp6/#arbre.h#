typedef float freq_t[1<<8];
#define LONGMAX 256
void frequence(freq_t tab, FILE *file);

/*notre structure de noeud comprend les lettres du noeud, la somme de leur fréquences, le chemin binaire et la longueur de ce chemin. */
struct noeud_m{
  int lettre;
  float freq;
  /* char *chemin;
     int taille_c;  */
};

typedef struct noeud_m *noeud_t;

/* Un arbre binaire est définirt par sa racine et ses deux fils */
struct arbrebinaire_s{
  noeud_t racine;
  struct arbrebinaire_s *filsg;
  struct arbrebinaire_s *filsd;
};

typedef struct arbrebinaire_s *arbrebinaire_t;

arbrebinaire_t construirebase(int, float);

arbrebinaire_t fusionArbres(arbrebinaire_t, arbrebinaire_t);

void swap (void*, void*);

int compare_arbre(arbrebinaire_t, arbrebinaire_t);

arbrebinaire_t construirecodage(freq_t);

typedef char *codingtable_t[256] ;

void tabledecodage(arbrebinaire_t,FILE *,codingtable_t);
