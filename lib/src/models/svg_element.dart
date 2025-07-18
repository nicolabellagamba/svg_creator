import 'package:svg_creator/src/enums/svg_attribute.dart';
import 'package:svg_creator/src/models/animation_elements.dart';

class Svg extends SvgElement with ShapeElementContainerMixin {
  @override
  String get name => "svg";

  Svg();

  factory Svg.create({String? width, String? height}) {
    final Svg svg = Svg();

    svg._attributes[SvgAttribute.width] = width;
    svg._attributes[SvgAttribute.height] = height;

    return svg;
  }

  @override
  String toString() {
    final StringBuffer sBuffer = StringBuffer();

    stringify(sBuffer);

    return sBuffer.toString();
  }
}

abstract class SvgElement {
  final Map<SvgAttribute, dynamic> _attributes = {};

  final List<SvgElement> _children = [];

  void _addChild(SvgElement child) {
    _children.add(child);
  }

  String get name;

  void _stringifyAttributes(StringBuffer sBuffer) {
    for (final MapEntry<SvgAttribute, dynamic> attribute in _attributes.entries.where((MapEntry<SvgAttribute, dynamic> attribute) => null != attribute.value)) {
      sBuffer.write('${attribute.key.name}="${attribute.value}"');
    }
  }

  void stringify(StringBuffer sBuffer) {
    sBuffer.write('<$name');
    final bool isAttributesNotEmpty = _attributes.entries.where((MapEntry<SvgAttribute, dynamic> attribute) => null != attribute.value).isNotEmpty;
    if (isAttributesNotEmpty) {
      sBuffer.write(' ');
      _stringifyAttributes(sBuffer);
    }

    if (_children.isNotEmpty) {
      sBuffer.write('>');
      for (final SvgElement element in _children) {
        element.stringify(sBuffer);
      }
      sBuffer.write('</$name>');
    } else {
      if (isAttributesNotEmpty) {
        sBuffer.write(' ');
      }
      sBuffer.write('/>');
    }
  }
}

mixin AnimationElementContainerMixin on SvgElement {
  void addAnimation(AnimationElement animation) {
    _addChild(animation);
  }
}

mixin ShapeElementContainerMixin on SvgElement {
  void addShape(ShapeElement shape) {
    _addChild(shape);
  }
}

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
}

class Polyline extends ShapeElement {
  @override
  String get name => 'polyline';
}

class Rect extends ShapeElement {
  @override
  String get name => 'rect';
}
