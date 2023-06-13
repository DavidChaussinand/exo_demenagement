void setup() {
 
 int cartonDansLentrepot = 34;
 int capaciteCamion = 9;
 int cartonDansLeCamion = 0;
 int nombreDeVoyage = 0;
 int cartonTresLeger = 0 ;
 int cartonLeger = 0 ;
 int cartonMoyen = 0 ;
 int cartonLourd = 0 ;
  
 int[] capaciteMaxBureau = {3,4,2,1,3,2,5,2,2,1,1,3,3,3,4} ;
 int[] nombreDeCartonDansBureau = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
 int bureau = 0;
 
  //  ici démarre étape 5 /     initialisation du poids des 34 cartons.
 int[] poidsDesCartons = new int[34];
 int i = 0;
 int PoidsTotalChargementCamion = 150 ;
 int PoidsActuelCamion = 0;
 boolean chargementEnCours = true;
 
 while (i<34) {     // initialisation du poids des 34 cartons.
   poidsDesCartons[i] = int(random(15,31));
   i++;
}
 i=0;



 
 while (cartonDansLentrepot >0 ) { //<>//
   chargementEnCours = true;
   
   while (cartonDansLeCamion < capaciteCamion && cartonDansLentrepot != 0 && chargementEnCours == true) {      //************* ici commence le chargement des cartons dans le camion ********//
       cartonDansLeCamion = cartonDansLeCamion + 1 ;
       cartonDansLentrepot = cartonDansLentrepot - 1 ;
       
       PoidsActuelCamion = PoidsActuelCamion + poidsDesCartons[i];
       
       
       if (PoidsActuelCamion > PoidsTotalChargementCamion){
          PoidsActuelCamion = PoidsActuelCamion - poidsDesCartons[i];
          chargementEnCours = false;
          cartonDansLeCamion = cartonDansLeCamion - 1 ;
          cartonDansLentrepot = cartonDansLentrepot + 1 ;
          
          
       } else {
         println("le carton "+  (i +1) +" a été posé dans le camion. Il pèse " + poidsDesCartons[i] +" kg" );
         i++;
       }
     
   }
   
   println("le poids actuel du camion est de : " + PoidsActuelCamion +"kg");
   nombreDeVoyage = nombreDeVoyage + 1 ;
   println("un voyage du camion de " + cartonDansLeCamion  + " cartons part au nouveau local. Il s'agit du voyage numéro " + nombreDeVoyage );
   println("");
   println("Dechargement des cartons");
   
  
   
   while (cartonDansLeCamion > 0 ) {   
     
          
     // situation 2  de l'exercice
          
          while ( cartonDansLeCamion > 0) {      
            
            cartonDansLeCamion = cartonDansLeCamion - 1;        // on prend un carton du camion
           /* float poids = random(8);                          // on pèse le carton en fonction de son poids condition c'était l'exercice pour les tas .
              if (poids <= 1) {
                  cartonTresLeger = cartonTresLeger +1;           
              } else {
                if (poids <= 3) {
                    cartonLeger = cartonLeger +1;
                } else {
                  if (poids <= 5) {
                      cartonMoyen = cartonMoyen + 1 ;
                  } else {
                      cartonLourd = cartonLourd + 1 ; 
                  }
                }
               }*/
     
           
             while (capaciteMaxBureau[bureau] == nombreDeCartonDansBureau[bureau]){         // tant que la capacité du bureau courant est pleine, on passe au bureau suivant
               bureau = bureau +1 ; 
             } 
          
             nombreDeCartonDansBureau[bureau] = nombreDeCartonDansBureau[bureau] + 1 ;   // on pose le carton dans le bureau courant 
             bureau = bureau + 1;                                                        // on incrément le bureau pour le bureau courant change au prochain passage
            
             if(bureau == 15){                                // si on a fait le tour des bureaux, on recommence de passer au 1er bureau.
               bureau = 0;
             }
         }

   }
   PoidsActuelCamion = 0;
   
   
   if (cartonDansLentrepot > 0 ) {
       println("Retour au local");
       println("");
   } else { 
       println("le déménagement est fini , on a fait ", nombreDeVoyage , "voyages."); //<>//
   }
   
   
 }  
 
   
   
   
   // situation 3    les déménageurs ont inversé les cartons dans 
   println("");
   println ("situation 3  :  Les déménageurs ont inversé les cartons dans deux bureaux : le 5 et le 10. Procédez à échange");
   println ("il y a dans le bureau 5 : "  + nombreDeCartonDansBureau[5] + " carton(s)");
   println ("il y a dans le bureau 10 : " + nombreDeCartonDansBureau[10] + " carton(s)");
   int cartonDansCouloir = 0 ;
   cartonDansCouloir = nombreDeCartonDansBureau[5];
   nombreDeCartonDansBureau[5] = nombreDeCartonDansBureau[10];
   nombreDeCartonDansBureau[10] = cartonDansCouloir;
   println ("les cartons sont  bien à leurs places");
   println ("il y a dans le bureau 5 : "  + nombreDeCartonDansBureau[5] + " carton(s)");
   println ("il y a dans le bureau 10 : " + nombreDeCartonDansBureau[10] + " carton(s)");
    
    
   

   /*println("");
   println(" le nombre de carton trés leger est de " + cartonTresLeger);
   println(" le nombre de carton leger est de " + cartonLeger);
   println(" le nombre de carton moyen est de " + cartonMoyen);
   println(" le nombre de carton lourd est de " + cartonLourd);
   println("");
   println(" le nombre total de carton est bien de " + ( cartonTresLeger + cartonLeger + cartonMoyen + cartonLourd));*/
    
}
  


void draw() {
// On casse le boucle infernale de Processing
exit();
}



// ligne de code pour lancer processing 
// $ /usr/share/processing/processing-4.2/processing
