library;

import 'package:svg_creator/src/models/svg_element.dart';

export 'src/models/svg_element.dart';

sealed class TextContenElement extends SvgElement {}

class SvgText extends TextContenElement {
  @override
  String get name => 'text';

  
}

sealed class TextContentChildElement extends TextContenElement {}

class Tspan extends TextContentChildElement {
  @override
  String get name => 'tspan';
}

class SvgTextPath extends TextContentChildElement {
  @override
  String get name => 'textPath';
}