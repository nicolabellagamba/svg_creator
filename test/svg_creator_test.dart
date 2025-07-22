import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:svg_creator/src/models/svg_element.dart';
import 'package:svg_creator/src/models/svg_point.dart';

void main() {
  test('create a simple svg', () {
    final Svg svg = Svg.create(width: "100", height: "100")..addShape(

    Polygon()
    ..fill = Colors.black
      ..addPoint(SvgPoint(x: 50, y: 25))
      ..addPoint(SvgPoint(x: 25, y: 75))
      ..addPoint(SvgPoint(x: 75, y: 75)));

    print(svg);
  });
}
