part of '../models/svg_element.dart';

mixin ShapeElementContainerMixin on SvgElement {
  void addShape(ShapeElement shape) {
    _addChild(shape);
  }
}