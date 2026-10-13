class Media {
final String titre;

  Media(this.titre);

  void afficherType() {
    print("Ceci est un média générique.");
  }
}
class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Livre : $titre par $auteur.");
  }
}
class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Film : $titre, durée : $dureeMinutes minutes.");
  }
}
void main() {
  List<Media> catalogue = [];

  catalogue.add(Livre("Le Petit Prince", "Antoine de Saint-Exupéry"));
  catalogue.add(Livre("1984", "George Orwell"));
  catalogue.add(Film("Inception", 148));
  catalogue.add(Film("Le Fabuleux Destin d'Amélie Poulain", 122));

  for (Media m in catalogue) {
    m.afficherType();
  }
}