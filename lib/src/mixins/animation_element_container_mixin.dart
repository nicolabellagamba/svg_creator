part of '../models/svg_element.dart';

mixin AnimationElementContainerMixin on SvgElement {
  void addAnimation(AnimationElement animation) {
    _addChild(animation);
  }
}