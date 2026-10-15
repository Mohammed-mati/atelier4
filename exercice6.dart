 abstract class Connectable {
  void connecter(String utilisateur);

  void deconnecter();
}
class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("ServeurAPI : Connexion établie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("ServeurAPI : Déconnexion réussie.");
  }
}
class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("BaseDeDonnees : Connexion établie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("BaseDeDonnees : Déconnexion réussie.");
  }
}
void main() {
  final ServeurAPI serveur = ServeurAPI();
  final BaseDeDonnees baseDeDonnees = BaseDeDonnees();

  final List<Connectable> services = [serveur, baseDeDonnees];

  for (final Connectable service in services) {
    service.connecter("Mohammed");
    service.deconnecter();
  }
}