

  class Compte {
  // Propriété privée pour le solde
  double _solde;

  // Propriété finale pour le numéro du compte
  final String numeroCompte;

  // Constructeur principal simplifié
  Compte(this.numeroCompte, [this._solde = 0.0]);

  // Méthode pour consulter le solde avec get public
  double get solde {
    return _solde;
  }

  // Méthode  pour déposer de l'argent
  void deposer(double montant) {
    if (montant > 0) { //condition de depot
      _solde += montant;
      print("Vous avez déposé $montant. Votre nouveau solde est : $_solde");
    } else {
      print("Merci d'effectuer un depot valide.");
    }
  }}



void main() {
  // Création d'un compte avec solde initial par défaut
  Compte monCompte = Compte("333",0.0);

  print("Votre Numéro de compte est: ${monCompte.numeroCompte}");
  print("Solde initial: ${monCompte.solde}");
//Exemple de dépôt 
 monCompte.deposer(500);
 print("Nouveau solde après dépôt : ${monCompte.solde}"); 
}
