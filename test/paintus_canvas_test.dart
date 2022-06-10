import 'package:flutter_test/flutter_test.dart';
import 'package:paintus_canvas/paintus_canvas.dart';
import 'package:paintus_canvas/paintus_canvas_platform_interface.dart';
import 'package:paintus_canvas/paintus_canvas_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPaintusCanvasPlatform 
    with MockPlatformInterfaceMixin
    implements PaintusCanvasPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PaintusCanvasPlatform initialPlatform = PaintusCanvasPlatform.instance;

  test('$MethodChannelPaintusCanvas is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPaintusCanvas>());
  });

  test('getPlatformVersion', () async {
    PaintusCanvas paintusCanvasPlugin = PaintusCanvas();
    MockPaintusCanvasPlatform fakePlatform = MockPaintusCanvasPlatform();
    PaintusCanvasPlatform.instance = fakePlatform;
  
    expect(await paintusCanvasPlugin.getPlatformVersion(), '42');
  });
}
