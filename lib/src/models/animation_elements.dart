import 'package:svg_creator/src/models/svg_element.dart';

sealed class AnimationElement extends SvgElement {}

class Animate extends AnimationElement {
  @override
  String get name => 'animate';
}