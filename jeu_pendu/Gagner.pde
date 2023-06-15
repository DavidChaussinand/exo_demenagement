boolean verification_tableau_identique( char[] motADeviner , char[] motCaché) {
    
    boolean identique = true;
    int i = 0;
    
     
    while ( i < motADeviner.length ) { 
      if (motADeviner[i] != motCaché[i] ) {
        identique = false; 
        break;
      }
      i= i+1;

    }

    return identique;
}
