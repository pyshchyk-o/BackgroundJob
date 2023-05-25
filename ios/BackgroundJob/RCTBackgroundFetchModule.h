#import <React/RCTBridgeModule.h>
#import <React/RCTEventEmitter.h>

@interface RCTBackgroundFetchModule : RCTEventEmitter <RCTBridgeModule>

- (NSArray<NSString *> *)supportedEvents;

- (void)emitEvent;
@end
