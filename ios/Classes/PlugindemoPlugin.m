#import "PlugindemoPlugin.h"
#if __has_include(<plugindemo/plugindemo-Swift.h>)
#import <plugindemo/plugindemo-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "plugindemo-Swift.h"
#endif

@implementation PlugindemoPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftPlugindemoPlugin registerWithRegistrar:registrar];
}
@end
