
import 'paintus_canvas_platform_interface.dart';

class PaintusCanvas {
  Future<String?> getPlatformVersion() {
    return PaintusCanvasPlatform.instance.getPlatformVersion();
  }
}
