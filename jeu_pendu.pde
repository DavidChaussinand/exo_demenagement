void setup() {
  
  char[] motADeviner = {'a','v','i','o','i'};
  char[] motCaché = new char[motADeviner.length];
  char lettreUtilisateur ;
  boolean jaiGagné = false;
  int i = 0;
  int compteurLettre = 0;
  int essaiRestant = motADeviner.length + 3 ;
  
  
  while (i < motADeviner.length){
    motCaché[i] = '_' ;
    i = i+1;
  }
  
    
  print("merci de deviner mon mot:   ");
  print(str(motCaché));
  println("");
  print("Tu as "+ essaiRestant  + " tentatives pour la partie");
  
  
  
  while (jaiGagné == false && essaiRestant > 0 ) {
          
      lettreUtilisateur = javax.swing.JOptionPane.showInputDialog(null,"Tapez une lettre ?").charAt(0);
      
       println( "la lettre de l'utilisateur est le  : " + lettreUtilisateur);
      
      for ( i = 0 ; i < motADeviner.length ; i++) {      // on parcours l'ensemble des lettres du mot à deviner 
        if ( lettreUtilisateur == motADeviner[i]){       // si la lettre utilisateur est égale à la valeur d'une lettre du mot a deviner à l'indice X  alors
          motCaché[i] = lettreUtilisateur;               // on remplace autant de fois la valeur de l'indice X par la lettre utilisateur  .
          compteurLettre = compteurLettre + 1 ; 
        } 
        print(motCaché[i]);
  
      }
      println(" ");
      println(" ");
      
      
      if (compteurLettre > 0 ) {
        println("cette lettre est présente " + compteurLettre + " fois");  
      }
      else {
        println("la lettre n'est pas présente dans le mot");
        essaiRestant = essaiRestant - 1 ;
        println("le nombre d'essai restant est de " + essaiRestant) ;
      }
      
      compteurLettre = 0;   // réinitialisation du compteur 
      
      
      
      println("");
      
      jaiGagné = verification_tableau_identique(motADeviner , motCaché );
  }
  

  if  (essaiRestant > 0) {
    println ("tu as gagné");
  } else {
    println ("tu as perdu");
  }

  
 

}

void draw() {
// On casse le boucle infernale de Processing

exit();
}
