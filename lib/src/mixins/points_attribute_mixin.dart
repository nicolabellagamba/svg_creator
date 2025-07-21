part of '../models/svg_element.dart';

mixin PointsAttributeMixin on SvgElement {
  set points(List<SvgPoint> points) {
    _attributes[SvgAttribute.points] = points;
  }

  addPoint(SvgPoint point) {
    if (!_attributes.containsKey(SvgAttribute.points)) {
      _attributes[SvgAttribute.points] = <SvgPoint>[];
    }
    (_attributes[SvgAttribute.points] as List<SvgPoint>).add(point);
  }

  addPoints(Iterable<SvgPoint> points) {
    if (!_attributes.containsKey(SvgAttribute.points)) {
      _attributes[SvgAttribute.points] = <SvgPoint>[];
    }
    (_attributes[SvgAttribute.points] as List<SvgPoint>).addAll(points);
  }
}
