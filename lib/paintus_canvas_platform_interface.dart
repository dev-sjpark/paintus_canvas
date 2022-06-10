import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'paintus_canvas_method_channel.dart';

abstract class PaintusCanvasPlatform extends PlatformInterface {
  /// Constructs a PaintusCanvasPlatform.
  PaintusCanvasPlatform() : super(token: _token);

  static final Object _token = Object();

  static PaintusCanvasPlatform _instance = MethodChannelPaintusCanvas();

  /// The default instance of [PaintusCanvasPlatform] to use.
  ///
  /// Defaults to [MethodChannelPaintusCanvas].
  static PaintusCanvasPlatform get instance => _instance;
  
  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PaintusCanvasPlatform] when
  /// they register themselves.
  static set instance(PaintusCanvasPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
