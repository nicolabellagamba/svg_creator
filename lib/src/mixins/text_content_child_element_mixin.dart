part of '../models/svg_element.dart';

mixin TextContentChildElementMixin on SvgElement {
  void addShape(ShapeElement shape) {
    _addChild(shape);
  }
}