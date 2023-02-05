import 'package:flutter/material.dart';

class RoundedRectangleSliderTrackShape extends SliderTrackShape {
  @override
  Rect getPreferredRect({
    RenderBox? parentBox,
    Offset offset = Offset.zero,
    SliderThemeData? sliderTheme,
    bool? isDiscrete,
  }) {
    final double? trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }

  @override
  void pain(
    PaintingContext context,
    Offset offset, {
    RenderBox? parentBox,
    SliderThemeData sliderTheme,
    Animation<double> enableAnimation,
    TextDirection textDirection,
    Offset thumbCenter,
    bool isDiscrete,
    bool isEnabled,
  }) {
    final Canvas canvas = context.canvas;
    final double? trackHeight = sliderTheme.trackHeight;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final double trackWidth = parentBox.size.width;
    const double cornerRadius = 12;
    final Paint activePaint = Paint()
      ..color = sliderTheme.activeTrackColor!
      ..style = PaintingStyle.fill;
    final RRect trackRRect = RRect.fromRectAndCorners(
      Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight),
      topLeft: Radius.circular(cornerRadius),
      topRight: Radius.circular(cornerRadius),
      bottomLeft: Radius.circular(cornerRadius),
      bottomRight: Radius.circular(cornerRadius),
    );
    canvas.drawRRect(trackRRect, activePaint);
  }
}
