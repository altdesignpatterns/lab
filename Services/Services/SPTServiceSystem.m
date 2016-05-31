#import "SPTServiceSystem.h"
#import "SPTArtistService.h"

@interface SPTServiceSystem ()

@property (nonatomic, strong, readonly) NSDictionary<NSString *, id<SPTService>> *services;

@end

@implementation SPTServiceSystem

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _services = @{
            @"artist": [SPTArtistService new]
        };
    }
    
    return self;
}

- (id<SPTService>)serviceWithIdentifier:(NSString *)identifier
{
    return self.services[identifier];
}

@end
