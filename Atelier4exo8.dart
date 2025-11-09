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
  class Roman extends Livre{
    String genre;
    Roman(super.titre,super.auteur,this.genre,[super._pages=200]);//constructeur de la classe Roman 
  
    @override // redefinition de la methode afficherInfo de la classe mere : Livre
    void afficherInfo(){// la methode qui affiche toutes les informations pour les objets cree de cette classe s'apelle afficherInfo 
  super.afficherInfo();  //Appel la methode de la classe mere qui permet d'afficher titre,auteur et nombre de pages de chaque livre 
  print("Ce livre est de genre: $genre");// On affiche aussi l'information genre
}
  }
void main() {
  var l1= Livre("How to be Happy", "Hanane");//le livre l1 va prendre la valeur par defaut 200 pour son nombre de pages 
  var l2= Livre("L'art culinaire kabyle", "Karim",7);
  var l3= Livre("Be intelligent,Be you", "Matine",20);
  var r1=Roman("Il ya quoi apres la mort ","Wahiba","Philosophie");
  var r2=Roman("Enjoy your wedding life","Wahiba","Romantic");
  var r3=Roman("Coupe de monde ","Wahiba","Sport",30);

  l1.afficherInfo();
  l2.afficherInfo();
  l3.afficherInfo();
  r1.afficherInfo();
  r2.afficherInfo();
  r3.afficherInfo();

  //Ici on apelle la methode statique qui affiche le nombre total de livre cree
  Livre.afficherTotal();
  
}