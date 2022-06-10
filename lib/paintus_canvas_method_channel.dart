import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'paintus_canvas_platform_interface.dart';

/// An implementation of [PaintusCanvasPlatform] that uses method channels.
class MethodChannelPaintusCanvas extends PaintusCanvasPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('paintus_canvas');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
