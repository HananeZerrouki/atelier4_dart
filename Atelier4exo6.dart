abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
  }
  class ServeurAPI implements Connectable{
    @override
void connecter(String utilisateur) {
print("ServeurAPI: Connexion établie pour $utilisateur.");
  }
  @override
void deconnecter() {
print(" votre Deconnexion est reussie.");
  }}
  class BaseDeDonnees implements Connectable{
    @override
void connecter(String utilisateur) {
print("BaseDeDonnees: Connexion établie pour  cet $utilisateur.");
  }
  @override
void deconnecter() {
print("votre Deconnexion est reussie.");
  }}
  void main(){
    var s1=ServeurAPI();
    var s2=ServeurAPI();
    var s3=ServeurAPI();
    var b1=BaseDeDonnees();
    var b2=BaseDeDonnees();
  List<Connectable> services = [];// Création d'une liste vide de type Connectable qui porte le nom services
//Ajout des instances cree a cette liste   
services.add(s1);
services.add(s2);
services.add(s3);
services.add(b1);
services.add(b2);
print("services=[s1,s2,s3,b1,b2]");//On affiche ici la liste de tous les instances crees dans cette liste
// Liste des utilisateurs différents
  List<String> utilisateurs = ["Hanane", "Karim", "Matine", "hafid", "Wahiba"];

   // Parcours des services avec index pour assigner a chaque service un utilisateur différent
  for (int i = 0; i < services.length; i++) {
    services[i].connecter(utilisateurs[i]);
    services[i].deconnecter();}}
  