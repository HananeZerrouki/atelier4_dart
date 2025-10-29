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
    print("voila les Coordonnées: ($_x, $_y)");
  }
}

void main() {
  var pt = Point(2.0, 5.0);
  pt.display();        // Coordonnées: (2.0, 5.0)
  pt.move(-1.0, 3.0);
  pt.display();        // Coordonnées: (1.0, 2.0)
}