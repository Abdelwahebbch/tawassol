class Entrepreneur {
  final String name;
  final String cin;
  final String nomPole;
  final String plan;
  final int finTotal;
  final int score;

  factory Entrepreneur.emptyUser() {
    return Entrepreneur(
      name: "Not Available !",
      cin: "Not Available !",
      nomPole: "Not Available !",
      plan: "Free",
      finTotal: 0,
      score: 0,
    );
  }

  Entrepreneur({
    required this.name,
    required this.cin,
    required this.nomPole,
    required this.plan,
    required this.finTotal,
    required this.score,
  });
  void x() {}
  factory Entrepreneur.fromFireStore(Map<String, dynamic> data) {
    return Entrepreneur(
      name: data['Nom'] ?? "Not Available !",
      cin: data['Cin'] ?? "Not Available",
      nomPole: data['Nompole'] ?? "Not Available",
      plan: data['Plan'] ?? "Not Available",
      finTotal: data['Fintot'] ?? "Not Available",
      score: data['Score'] ?? "Not Available",
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'Nom': name,
      'Cin': cin,
      'Nompole': nomPole,
      'Plan': plan,
      'Fintot': finTotal,
      'Score': score,
    };
  }
}
