part of '../models/svg_element.dart';

mixin PointsAttributeMixin on SvgElement {
  set points(List<SvgPoint> points) {
    _attributes[SvgAttribute.points] = points.join(" ");
  }

  addPoint(SvgPoint point) {
    _attributes[SvgAttribute.points] = switch (!_attributes.containsKey(SvgAttribute.points) || _attributes[SvgAttribute.points] == null) {
      true => "$point",
      false => "${_attributes[SvgAttribute.points]} $point",
    };
  }

  addPoints(Iterable<SvgPoint> points) {
    if (!_attributes.containsKey(SvgAttribute.points)) {
      _attributes[SvgAttribute.points] = <SvgPoint>[];
    }
    (_attributes[SvgAttribute.points] as List<SvgPoint>).addAll(points);
  }
}
