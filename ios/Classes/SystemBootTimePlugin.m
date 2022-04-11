#import "SystemBootTimePlugin.h"
#if __has_include(<system_boot_time/system_boot_time-Swift.h>)
#import <system_boot_time/system_boot_time-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "system_boot_time-Swift.h"
#endif

@implementation SystemBootTimePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftSystemBootTimePlugin registerWithRegistrar:registrar];
}
@end
