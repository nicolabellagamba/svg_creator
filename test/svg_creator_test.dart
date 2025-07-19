import 'package:flutter_test/flutter_test.dart';
import 'package:svg_creator/src/models/svg_element.dart';

void main() {
  test('create a simple svg', () {
    final Svg svg = Svg.create(width: "100", height: "100");
    svg.addShape(Polygon()..points = "50,25 25,75 75,57");

    print(svg.toString());
  });
}
