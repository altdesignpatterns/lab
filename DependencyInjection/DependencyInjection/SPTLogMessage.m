#import "SPTLogMessage.h"

@implementation SPTLogMessage

- (instancetype)initWithEventNamed:(NSString *)eventName date:(NSDate *)date
{
    self = [super init];
    
    if (self) {
        _eventName = eventName;
        _date = date;
    }
    
    return self;
}

@end
