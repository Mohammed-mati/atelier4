class Livre {
  String titre;
  String auteur;

  int _pages = 200;

  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }

  int get pages => _pages;

  void afficherInfos() {
    print("Titre: $titre, Auteur: $auteur");
  }

  static void afficherTotal() {
    print("Nombre total de livres : $totalLivres");
  }
}

class Roman extends Livre {
  String genre;

  Roman(super.titre, super.auteur, this.genre);

  void afficherGenre() {
    print("Genre: $genre");
  }

  @override
  void afficherInfos() {
    super.afficherInfos();
    afficherGenre();
  }
}

void main() {
  var l1 = Livre("L'Étranger", "Albert Camus");
  var l2 = Livre("Le Petit Prince", "Antoine de Saint-Exupéry");

  l1.afficherInfos();
  l2.afficherInfos();
  print("Pages de l1 : ${l1.pages}");

  var r1 = Roman("Germinal", "Émile Zola", "Roman social");
  var r2 = Roman("Le Comte de Monte-Cristo", "Alexandre Dumas", "Aventure");

  r1.afficherInfos();
  r2.afficherInfos();

  Livre.afficherTotal();
}