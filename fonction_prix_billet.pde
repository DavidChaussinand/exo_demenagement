

void setup() {

int prix_global_billets = 0 ;

// // lundi 0, mardi 1, mercredi 2, jeudi 3 , vendredi 4 , samedi 5, dimanche 6 
int i = 0 ;

//println(jourSemaine.length);

while (i < 7) {
  
  int personne1 = prix_billet_avec_jour(65, i);
  int personne2 = prix_billet_avec_jour(64, i);
  int personne3 = prix_billet_avec_jour(18, i);
  int personne4 = prix_billet_avec_jour(14, i);
  int personne5 = prix_billet_avec_jour(6, i);
  
  
  prix_global_billets = personne1 + personne2 + personne3 + personne4 + personne5 ;
  
  println("Pour le jour " + (i+1) + " de la semaine . Le prix global des billets est de " + prix_global_billets + " €");
  
  i++;
}



}

void draw() {
// On casse le boucle infernale de Processing
exit();
}
