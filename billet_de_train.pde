int prixBillet = 100;

int age = 19;
String[] jourSemaine = {"lundi","mardi","mercredi","jeudi","vendredi","samedi","dimanche"};

String jour = "lundi";

if (age < 8) {
  prixBillet = int(prixBillet * 0.5);
} else {
    if (age < 18 ) {
        prixBillet = int(prixBillet * 0.6);
    } else {
        if( age >= 18 && ( jour == jourSemaine[5]|| jour == jourSemaine[6]) ){
            prixBillet = int(prixBillet * 0.6);
        } else {
            if (age < 65) {
               prixBillet = int(prixBillet * 1 );
            } else{
              if (jour == jourSemaine[1] || jour == jourSemaine[3] ){
                  prixBillet = int(prixBillet * 0.6);
              } else {
                  prixBillet = int(prixBillet * 0.7);
              }
            }
        }
    }

} 

if (prixBillet == prixBillet * 1  && jour == jourSemaine[0] ) {
    prixBillet = int(prixBillet * 0.7);
}



println(" le prix est de " + prixBillet + " €" );
