#import "SystemBootTimePlugin.h"
#import "SystemBootTime.h"

@interface SystemBootTimePlugin () <SystemBootTime>

@end

@implementation SystemBootTimePlugin

+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
    SystemBootTimePlugin *instance = [[SystemBootTimePlugin alloc] init];
    [registrar publish:instance];
    SystemBootTimeSetup(registrar.messenger, instance);
}

- (nullable NSNumber *)secondWithError:(FlutterError * _Nullable __autoreleasing * _Nonnull)error {
    struct timespec ts;
    if (@available(iOS 10.0, *)) {
        clock_gettime(CLOCK_MONOTONIC, &ts);
    }
    return @(ts.tv_sec);
}

@end
