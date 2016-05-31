#import "SPTTrack.h"

@implementation SPTTrack

- (instancetype)initWithName:(NSString *)name length:(NSTimeInterval)length
{
    self = [super init];
    
    if (self) {
        _name = [name copy];
        _length = length;
    }
    
    return self;
}

@end
