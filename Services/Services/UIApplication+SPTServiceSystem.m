#import "UIApplication+SPTServiceSystem.h"
#import "AppDelegate.h"

@implementation UIApplication (SPTServiceSystem)

+ (SPTServiceSystem *)serviceSystem
{
    return ((AppDelegate *)[self sharedApplication].delegate).serviceSystem;
}

@end
