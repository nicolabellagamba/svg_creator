part of './svg_element.dart';

sealed class TextContentElement extends SvgElement {}

class SvgText extends TextContentElement {
  @override
  String get name => 'text';
}

sealed class TextContentChildElement extends TextContentElement {}

class Tspan extends TextContentChildElement {
  @override
  String get name => 'tspan';
}

class SvgTextPath extends TextContentChildElement {
  @override
  String get name => 'textPath';
}
