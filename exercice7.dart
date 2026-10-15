class Tache {
  String description;
  static int nombreTotal = 0;

  Tache(this.description) {
    nombreTotal++;
  }
}
void main() {
  final Tache tache1 = Tache("Faire les exercices");
  final Tache tache2 = Tache("Réviser le cours");
  final Tache tache3 = Tache("Préparer le projet");

  print("Nombre total de tâches : ${Tache.nombreTotal}");
}