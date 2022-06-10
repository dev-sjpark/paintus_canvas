import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:paintus_canvas/paintus_canvas_method_channel.dart';

void main() {
  MethodChannelPaintusCanvas platform = MethodChannelPaintusCanvas();
  const MethodChannel channel = MethodChannel('paintus_canvas');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
