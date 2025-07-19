part of './svg_element.dart';

sealed class ShapeElement extends SvgElement {}

class Circle extends ShapeElement {
  @override
  String get name => 'circle';
}

class Ellipse extends ShapeElement {
  @override
  String get name => 'ellipse';
}

class Line extends ShapeElement {
  @override
  String get name => 'line';
}

class Path extends ShapeElement {
  @override
  String get name => 'path';
}

class Polygon extends ShapeElement {
  @override
  String get name => 'polygon';

  set points(String points) {
    _attributes[SvgAttribute.points] = points;
  }

  set fill(Color color) {
    _attributes[SvgAttribute.fill] = color.toHex();
  }
}

class Polyline extends ShapeElement {
  @override
  String get name => 'polyline';
}

class Rect extends ShapeElement {
  @override
  String get name => 'rect';

  set width(String width) {
    _attributes[SvgAttribute.width] = width;
  }

  set height(String height) {
    _attributes[SvgAttribute.height] = height;
  }

  set x(num x) {
    _attributes[SvgAttribute.x] = x;
  }

  set y(num y) {
    _attributes[SvgAttribute.y] = y;
  }

  set rx(num rx) {
    _attributes[SvgAttribute.rx] = rx;
  }

  set ry(num ry) {
    _attributes[SvgAttribute.ry] = ry;
  }
}
