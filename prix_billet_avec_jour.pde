int prix_billet_avec_jour(int age ,int jour) {

  int prixBillet = 100;
  
  
                // lundi 0, mardi 1, mercredi 2, jeudi 3 , vendredi 4 , samedi 5, dimanche 6 
int[] jourSemaine = {0,1,2,3,4,5,6};
  
  
  if (age < 8) {
    prixBillet = int(prixBillet * 0.5);    //50%
  } 
  else if (age <16){
      prixBillet = int(prixBillet * 0.55);  //35%
    }  
    else { 
     if (age < 18 ) {
       prixBillet = int(prixBillet * 0.6);  //40%
     } 
     else {
      if( age >= 18 && ( jour == jourSemaine[5]|| jour == jourSemaine[6]) ){
       prixBillet = int(prixBillet * 0.6);  //40%
      }
      else {
        if (age < 65) {
          prixBillet = int(prixBillet * 1 ); //0%
        } 
        else {
          if (jour == jourSemaine[1] || jour == jourSemaine[3] ){
            prixBillet = int(prixBillet * 0.6); //40%
        } 
          else {
            prixBillet = int(prixBillet * 0.7); //30%
          }
        }
      }
    }
  } 

  
  return prixBillet;

}
