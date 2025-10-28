class Couleur{
  final int r; //rouge
  final int g; //vert
  final int b; //bleu
  //constructeur principal
  Couleur(this.r,this.g,this.b);
  //constructeur nommes
  Couleur.rouge(): r=255,g=0,b=0;
  Couleur.vert(): r=0,g=255,b=0;
  Couleur.bleu(): r=0,g=0,b=255;
  //methode
  void afficherCouleur(){
 print('R: $r, V: $g, B: $b');
  }}
  void main(){
    var R1=Couleur.rouge();
    Couleur R2= Couleur.rouge();
    Couleur c1= Couleur(364,55,8);
    R1.afficherCouleur();
    R2.afficherCouleur();
    c1.afficherCouleur();
  }