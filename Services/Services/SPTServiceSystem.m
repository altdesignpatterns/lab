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
    id<SPTService> const service = self.services[identifier];
    
    for (NSString *dependencyIdentifier in service.dependencies) {
        id<SPTService> const dependency = [self serviceWithIdentifier:dependencyIdentifier];
        [dependency configureWithServiceSystem:self];
    }
    
    [service configureWithServiceSystem:self];
    return service;
}

@end
