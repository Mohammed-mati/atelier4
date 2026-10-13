class Compte {
  double _solde = 0.0;

  final String numeroCompte;

   Compte(this.numeroCompte, [double solde = 0.0])
      : _solde = solde;

  String get solde => '${_solde.toStringAsFixed(2)} \$';
    void depot(double montant) {
    if (montant > 0) {
      _solde += montant;
    }
  }
}

void main() {
  var compte = Compte('123456');

  compte.depot(150.0);

  print('Numero du compte : ${compte.numeroCompte}');
  print('Solde : ${compte.solde}');
}