void setup() {
  
  int nbDePizzaLivréParlivraison  = 0 ;
  int nbDeLivraison = 0 ;
  int[] tableauDesLivraisonPrévu  = {13, 11, 8 , 7 , 5 ,3 ,0} ;
  int prixPizza = 10 ;
  int recetteGlobale = 0;
  
 
  
  println("le livreur a un total de 13 pizza à livrer dans la soirée");
  
  for ( int i =0 ; i < tableauDesLivraisonPrévu.length -1 ; i++){
   
    nbDePizzaLivréParlivraison = tableauDesLivraisonPrévu [i]  - tableauDesLivraisonPrévu[i+1];
    nbDeLivraison = nbDeLivraison + 1;
        
    int prix = prixDeLaCommande( prixPizza , nbDePizzaLivréParlivraison);
    println(" livraion "+ nbDeLivraison + " => " + nbDePizzaLivréParlivraison +" pizzas" );
    println(" le prix de la commande est de " + prix );
    recetteGlobale = recetteGlobale + prix; 
  
  }
  
  println(" La recette globale de la soirée est de " + recetteGlobale + " €");


}

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
