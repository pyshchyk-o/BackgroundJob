#import "RCTBackgroundFetchModule.h"

@implementation RCTBackgroundFetchModule

RCT_EXPORT_MODULE();

- (NSArray<NSString *> *)supportedEvents
{
  return @[@"BackgroundFetchCompleted"];
}

- (void)emitEvent
{
  [self sendEventWithName:@"BackgroundFetchCompleted" body:@{@"message": @"Background fetch completed"}];
}

@end
