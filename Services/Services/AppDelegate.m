#import "AppDelegate.h"
#import "SPTServiceSystem.h"
#import "SPTService.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.serviceSystem = [SPTServiceSystem new];
    
    UIViewController *rootViewController = [self.serviceSystem serviceWithIdentifier:@"artist"].viewController;
    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:rootViewController];
    
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
