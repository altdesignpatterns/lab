#import "AppDelegate.h"
#import "SPTAlbumViewController.h"
#import "SPTAlbumDataLoader.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    SPTAlbumDataLoader *albumDataLoader = [SPTAlbumDataLoader new];
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [[SPTAlbumViewController alloc] initWithAlbumNamed:@"Best of U2" dataLoader:albumDataLoader];
    [self.window makeKeyAndVisible];
    
    return YES;
}

@end
