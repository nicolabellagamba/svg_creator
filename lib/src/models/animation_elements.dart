part of './svg_element.dart';

sealed class AnimationElement extends SvgElement {}

class Animate extends AnimationElement {
  @override
  String get name => 'animate';
}

class AnimateMotion extends AnimationElement {
  @override
  String get name => 'animatemotion';
}

class AnimateTransform extends AnimationElement {
  @override
  String get name => 'animatetransform';
}

class Mpath extends AnimationElement {
  @override
  String get name => 'mpath';
}

class Set extends AnimationElement {
  @override
  String get name => 'set';
}
