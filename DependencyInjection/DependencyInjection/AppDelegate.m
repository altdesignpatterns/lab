#import "AppDelegate.h"
#import "ViewController.h"
#import "SPTEventLogger.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    SPTEventLogger *eventLogger = [SPTEventLogger new];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[ViewController alloc] initWithEventLogger:eventLogger];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
