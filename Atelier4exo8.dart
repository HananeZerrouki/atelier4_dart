class Livre{
  String titre;
  String auteur;

  // constructeur
  Livre(this.titre, this.auteur);
  void afficherInfo(){
    print("Votre Livre est de titre: $titre, ecrit par l'auteur: $auteur");
  }
  }

 

void main() {
  var l1= Livre("How to be Happy", "Hanane");
  var l2= Livre("L'art culinaire kabyle", "Karim");
  var l3= Livre("Be intelligent,Be you", "Matine");

  l1.afficherInfo();
  l2.afficherInfo();
  l3.afficherInfo();
  
}