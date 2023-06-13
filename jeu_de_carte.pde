void setup() {

int[] cartes= new int[32];
int[] chiffre6 = new int[32];
int i = 0;
int compteurDuChiffre6 = 0 ;


while (i < 32) { //<>//
  cartes[i]= int(random(1,10));
  chiffre6[i] = 0;
  print(cartes[i] +" ");
  i = i +1 ;  
}

i=0;   
println("");

while(i < 32 ) {
  if (cartes[i] == 6){
    chiffre6[i] = 1;
    compteurDuChiffre6 = compteurDuChiffre6 + 1;
    
  } 
  print(chiffre6[i] +" ");
  i= i+1;
}
println("");
println("Nbre de 6 : " + compteurDuChiffre6);



i=0;
while(i < 32){
  
  if (chiffre6[i] == 1) {
    println("carte: " + (i+1) + " avec un 6 ");     //   c'est l'indice du tableau qu'on chercher et non la valeur du tableau.
  }
  i=i+1;
}















}





void draw() {
// On casse le boucle infernale de Processing
exit();
}
