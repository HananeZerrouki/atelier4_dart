class Point {
  double _x;
  double _y;

  // constructeur
  Point(this._x, this._y);

  // méthode pour déplacer le point
  void move(double dx, double dy) {
    _x = _x + dx;
    _y += dy;
  }

  // méthode pour afficher les coordonnées
  void display() {
    print("Coordonnées: ($_x, $_y)");
  }
}

void main() {
  var p = Point(2.0, 2.0);
  p.display();        // Coordonnées: (2.0, 2.0)
  p.move(2.0, -1.0);
  p.display();        // Coordonnées: (4.0, 1.0)
}