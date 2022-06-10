#import "PaintusCanvasPlugin.h"
#if __has_include(<paintus_canvas/paintus_canvas-Swift.h>)
#import <paintus_canvas/paintus_canvas-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "paintus_canvas-Swift.h"
#endif

@implementation PaintusCanvasPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPaintusCanvasPlugin registerWithRegistrar:registrar];
}
@end
