import 'dart:math';

class Points {
  final double y1;
  final double x1;

  Points(this.x1, this.y1);

  distance(Points p) {
    var dx = x1 - p.x1;
    var dy = y1 - p.y1;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }
}

void main() {
  var p = Points(10.5, 20.5);
  print("X: ${p.x1} and Y: ${p.y1}");
  print("Distance between (10.5, 20.5) and (10.5, 21.5) is: ${p.distance(Points(10.5, 21.5))}");
}
