import 'dart:ui';

extension DrawingColorExtenstion on Color {
  /// Returns a new color that matches this color with the alpha channel
  /// replaced with the given percentage opacity (which ranges from 0 to 100).
  Color operator [](int opacity) {
    assert (opacity >= 0 && opacity <= 100);
    return withOpacity(opacity / 100);
  }
}