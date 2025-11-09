class Livre{
  String titre;
  String auteur;
int _pages;
static int totalLivres=0;

  // constructeur
  Livre(this.titre, this.auteur,[this._pages=200]){
    totalLivres++;}
  void afficherInfo(){
    print("Votre Livre est de titre: $titre, ecrit par l'auteur: $auteur, qui a :$_pages pages");
  }
  // Creation d'un getter pages pour lire le nombre de pages 
  int get pages {
    return _pages;
  }
  //une methode statique qui affiche le nombre total de livres crees
   static void afficherTotal() {
    print("Le nombre Total de livres crees est : $totalLivres");
  }
  }

 

void main() {
  var l1= Livre("How to be Happy", "Hanane");//le livre l1 va prendre la valeur par defaut 200 pour son nombre de pages 
  var l2= Livre("L'art culinaire kabyle", "Karim",7);
  var l3= Livre("Be intelligent,Be you", "Matine",20);

  l1.afficherInfo();
  l2.afficherInfo();
  l3.afficherInfo();
  Livre.afficherTotal();
  
}