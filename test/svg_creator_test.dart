import 'package:flutter_test/flutter_test.dart';
import 'package:svg_creator/src/models/shape_elements.dart';
import 'package:svg_creator/src/models/svg_element.dart';

void main() {
  test('adds one to input values', () {
    /* final calculator = Calculator();
    expect(calculator.addOne(2), 3);
    expect(calculator.addOne(-7), -6);
    expect(calculator.addOne(0), 1); */

    final Svg svg = Svg.create(width: "100", height: "100");
    svg.addShape(Polygon()..points = "50,25 25,75 75,57");

    print(svg.toString());
  });
}
