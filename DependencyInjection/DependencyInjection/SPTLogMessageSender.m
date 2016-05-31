#import "SPTLogMessageSender.h"
#import "SPTLogMessage.h"

@implementation SPTLogMessageSender

+ (instancetype)sharedSender
{
    static SPTLogMessageSender *sharedSender = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        sharedSender = [self new];
    });
    
    return sharedSender;
}

- (void)sendMessage:(SPTLogMessage *)message
{
    NSLog(@"Message sent with event name: %@, date: %@", message.eventName, message.date);
}

@end
