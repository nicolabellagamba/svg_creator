import 'dart:ui';

extension ColorExtension on Color {
  String toHex() {
    final StringBuffer sBuffer = StringBuffer();

    sBuffer.write('#');
    sBuffer.write(_padRadix(r));
    sBuffer.write(_padRadix(g));
    sBuffer.write(_padRadix(b));

    return sBuffer.toString().toUpperCase();
  }

  String _padRadix(double colorChannel) => ((colorChannel * 255.0).round() & 0xff).toRadixString(16).padLeft(2, '0');
}
