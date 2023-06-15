// loadStrings()
char[] motAleatoire() {            // ma fonction retourne un tableau de Char d'un mot aléatoire

  String[] list = loadStrings("liste.txt");              // tableau de mot qui sont recupérés de mon fichier txt.
  String motAleatoire = list[int(random(list.length))];   // on recupère la valeur de l'indice . l'indice est retrouvé de façon aléatoire.
  
  char[] mot = new char[motAleatoire.length()];           // je déclare un tableau de char vide nommé mot qui prend la taille du mot aléatoire
  
  for (int i = 0 ; i < motAleatoire.length() ; i++) {     // je parcours l'ensemble des lettres du mot aléatoire pour mettre chaque lettre dans le tableau mot
    mot[i] = motAleatoire.charAt(i);
    
  }
  return mot;                                        

}
