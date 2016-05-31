#import "SPTEventLogger.h"
#import "SPTLogMessage.h"
#import "SPTLogMessageSender.h"

@implementation SPTEventLogger

- (void)logEventNamed:(NSString *)eventName
{
    SPTLogMessage *message = [[SPTLogMessage alloc] initWithEventNamed:eventName date:[NSDate date]];
    [[SPTLogMessageSender sharedSender] sendMessage:message];
}

@end
