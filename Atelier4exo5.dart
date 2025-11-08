import 'dart:math';

abstract class Forme {
  double calculerAire();//methode abstraite
  void afficherMessage(){
    //methode concrete
    print("Calcule de l'aire...");
  }
}

class Cercle extends Forme {
  final double rayon;
  Cercle(this.rayon);
  @override 
  double calculerAire() {
    double airee= rayon*rayon*pi;
    return airee;
  }}
  class Rectangle extends Forme {
  final double longeur;
  final double largeur;
  Rectangle(this.longeur,this.largeur);

  @override 
  double calculerAire() {
    double airee= longeur*largeur;
    return airee;
  }}

void main() {
  var C1 = Cercle(5);
  
  C1.afficherMessage();
  double aire1= C1.calculerAire();
  print("Aire du cercle C1 est : $aire1");
  var C2 = Cercle(2);
  C2.afficherMessage();
  double aire2= C2.calculerAire();
  print("Aire du cercle C2 est : $aire2");
  
  
  var r1 = Rectangle(5,2);
  
  r1.afficherMessage();
  r1.calculerAire();
  double aire3= r1.calculerAire();
  print("Aire du rectangle r1 est : $aire3");
  
  var r2 = Rectangle(6,3);
r2.afficherMessage();
  r2.calculerAire();
  double aire4= r2.calculerAire();
  print("Aire du rectangle r2 est : $aire4");
  
}