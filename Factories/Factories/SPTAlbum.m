#import "SPTAlbum.h"

@implementation SPTAlbum

- (instancetype)initWithName:(NSString *)name
                  artistName:(NSString *)artistName
                      tracks:(NSArray<SPTTrack *> *)tracks
{
    self = [super init];
    
    if (self) {
        _name = [name copy];
        _artistName = [artistName copy];
        _tracks = [tracks copy];
    }
    
    return self;
}

@end
