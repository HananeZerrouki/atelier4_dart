class Media{
  final String titre;
  Media(this.titre);
  void afficherType(){
    print("Ceci est un média générique.");
  }
}
class Livre extends Media{
  final String auteur;
  Livre(super.titre, this.auteur);
  @override
   void afficherType(){
    print("Ceci est votre Livre : $titre ecrit par $auteur.");
  }
}
class Film extends Media{
  final int dureeMinutes;
  Film(super.titre, this.dureeMinutes);
  @override
   void afficherType(){
    print("Ceci est un Film : $titre de duree $dureeMinutes minutes");
  }
}
void main(){
  List <Media> Catalogue = [];
  Livre livre1 = Livre ('Comment eduquer votre enfant','hanane');
  Livre livre2 = Livre ('Art culinaire','karim');
  Film film1= Film('Titanic',120);
  Film film2= Film('Final Destination',120);
  Catalogue.add(livre1);
  Catalogue.add(livre2);
  Catalogue.add(film1);
  Catalogue.add(film2);
  
  

  for (var media in Catalogue){
    media.afficherType();
  }


}