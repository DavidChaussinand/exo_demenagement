void setup() {
  
  char[] motADeviner = {'a','v','i','i','n'}; //<>//
  char[] motCaché = new char[motADeviner.length];
  char lettreUtilisateur ;
  boolean jaiGagné = false;
  int i = 0;
  
  
  while (i < motADeviner.length){
    motCaché[i] = '_' ;
    i = i+1; //<>//
  }
  
    
  println("merci de deviner mon mot");
  print(str(motCaché));
  println("");
  
  while (jaiGagné == false ) {
    
      
      
      lettreUtilisateur = javax.swing.JOptionPane.showInputDialog(null,"Tapez une lettre ?").charAt(0);
       
      
      for ( i = 0 ; i < motADeviner.length ; i++) { 
        if ( lettreUtilisateur == motADeviner[i]){
          motCaché[i] = lettreUtilisateur;
        }    
        print(motCaché[i]);
        
      }
      println("");
      
      jaiGagné = verification_tableau_identique(motADeviner , motCaché );
  }

     

  println ("tu as gagné"); 
 
  
  
  
}

void draw() {
// On casse le boucle infernale de Processing

exit();
}
