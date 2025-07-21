import 'dart:ui';

import 'package:svg_creator/src/enums/svg_attribute.dart';
import 'package:svg_creator/src/extenions/color_extension.dart';
import 'package:svg_creator/src/models/svg_point.dart';

// mixins
part '../mixins/animation_element_container_mixin.dart';
part '../mixins/points_attribute_mixin.dart';
part '../mixins/shape_element_container_mixin.dart';
// models
part './animation_elements.dart';
part './shape_elements.dart';
part './text_content_elements.dart';

abstract class SvgElement {
  final Map<SvgAttribute, dynamic> _attributes = {};

  final List<SvgElement> _children = [];

  void _addChild(SvgElement child) {
    _children.add(child);
  }

  String get name;

  void _stringifyAttributes(StringBuffer sBuffer) {
    for (final MapEntry<SvgAttribute, dynamic> attribute in _attributes.entries.where((MapEntry<SvgAttribute, dynamic> attribute) => null != attribute.value)) {
      sBuffer.write(' ${attribute.key.name}="${attribute.value}"');
    }
  }

  void stringify(StringBuffer sBuffer) {
    sBuffer.write('<$name');
    final bool isAttributesNotEmpty = _attributes.entries.where((MapEntry<SvgAttribute, dynamic> attribute) => null != attribute.value).isNotEmpty;
    if (isAttributesNotEmpty) {
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
