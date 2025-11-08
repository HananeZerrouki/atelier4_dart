class Tache{
  String description;
  static int nombreTotal=0;
  Tache(this.description){nombreTotal++;}
}
void main(){
  //Creation des trois instances
  var t1=Tache("Cuisiner vos repas");
  var t2=Tache("Laver vos linges");
  var t3=Tache("Faire de sport");
  var t4=Tache("Reviser vos lecons");
  //Affichage de nombreTotal crees en utilisant le nom de la classe (statique)
  print("Le nombre total des taches crees est: ${Tache.nombreTotal} ");
}