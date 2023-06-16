void setup() {
  
  
  /* int[] tab = {13,15,11,4,3,9,8,10,1};           //exercice de tri du tableau de la plus petite valeur à la plus grande.

  for (int j =0  ; j < tab1.length-1 ; j++) {
    for (int i =0 ; i < tab1.length-1 ; i++ ){        //on parcours le tableau  , on s'arrete bien à la dernière case vu qu'on fait i+1, il faut mettre la taille du tableau -1 .

       if ( tab[i] > tab[i+1]) {               // condition si l'indice x est supérieur à l'indice suivant
        int temp = tab[i];                     // on crée un variable de stockage temporaire  est on lui affecte la valeur de l'indice x         
        tab[i] = tab[i+1];                     // l'indice x prend la valeur de l'indice x +1 
        tab[i+1] = temp;                       // l'indice x + 1 prend la valeur de la vaiable temporaire 
        } 
    }
  }
  
  println(tab1);*/
 
 
  
  int nbDePizzaLivréParlivraison  = 0 ; //<>//
  int nbDeLivraison = 0 ;
  int[] tableauDesLivraisonPrévu  = {13, 11, 8 , 7 , 5 ,3 ,0} ;
  int prixPizza = 10 ;
  int recetteGlobale = 0;
  
  println("le livreur a un total de 13 pizza à livrer dans la soirée");
  
  for ( int i =0 ; i < tableauDesLivraisonPrévu.length -1 ; i++){                    // on parcours l'ensemble du tableau
   
    nbDePizzaLivréParlivraison = tableauDesLivraisonPrévu [i]  - tableauDesLivraisonPrévu[i+1];      // lors de la 1er livraison : nb de pizza livré égale la 1er valeur du tableau  - la 2eme valeur du tableau   et ainsi de suite.
    nbDeLivraison = nbDeLivraison + 1;   
        
    int prix = prixDeLaCommande( prixPizza , nbDePizzaLivréParlivraison);                          // on initialise la variable prix , qui reprend la valeur retournée par la fonction 
    println(" livraion "+ nbDeLivraison + " => " + nbDePizzaLivréParlivraison +" pizzas" );
    println(" le prix de la commande est de " + prix );                            
    recetteGlobale = recetteGlobale + prix; 
  
  }
  
  println(" La recette globale de la soirée est de " + recetteGlobale + " €");


}
// ********************** création de la fonction prix de la commande *************************
int prixDeLaCommande( int prix, int nbDePizzaLivré){
  
  int fraisDeLivraison = 3;
  
  if (nbDePizzaLivré < 3 ){
    prix = prix * nbDePizzaLivré +fraisDeLivraison ;
  } 
  else{
   prix = prix * nbDePizzaLivré;
  }
  return prix;
} 
//*************** fin de la fonction *************************************
