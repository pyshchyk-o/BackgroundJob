#import "AppDelegate.h"
#import "RCTBackgroundFetchModule.h"
#import <React/RCTBundleURLProvider.h>
#import <UIKit/UIKit.h>

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  self.moduleName = @"BackgroundJob";
  // You can add your custom initial props in the dictionary below.
  // They will be passed down to the ViewController used by React Native.
  self.initialProps = @{};

  // Set minimum background fetch interval
  [[UIApplication sharedApplication] setMinimumBackgroundFetchInterval:UIApplicationBackgroundFetchIntervalMinimum];

  return [super application:application didFinishLaunchingWithOptions:launchOptions];
}

- (void)application:(UIApplication *)application performFetchWithCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler
{
    // Here you will call the code that fetches new data
    // Print to the console
    NSLog(@"Background fetch started+++");

    RCTBackgroundFetchModule *backgroundFetchModule = [self.bridge moduleForClass:[RCTBackgroundFetchModule class]];
    [backgroundFetchModule emitEvent];
    // When you are done, call the completionHandler. Pass in UIBackgroundFetchResultNewData if new data was fetched successfully, or a different value depending on the result of the fetch.

    completionHandler(UIBackgroundFetchResultNewData);
}

- (NSURL *)sourceURLForBridge:(RCTBridge *)bridge
{
#if DEBUG
  return [[RCTBundleURLProvider sharedSettings] jsBundleURLForBundleRoot:@"index"];
#else
  return [[NSBundle mainBundle] URLForResource:@"main" withExtension:@"jsbundle"];
#endif
}

/// This method controls whether the `concurrentRoot`feature of React18 is turned on or off.
///
/// @see: https://reactjs.org/blog/2022/03/29/react-v18.html
/// @note: This requires to be rendering on Fabric (i.e. on the New Architecture).
/// @return: `true` if the `concurrentRoot` feature is enabled. Otherwise, it returns `false`.
- (BOOL)concurrentRootEnabled
{
  return true;
}

@end
