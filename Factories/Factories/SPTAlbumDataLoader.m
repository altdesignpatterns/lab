#import "SPTAlbumDataLoader.h"
#import "SPTTrack.h"

@implementation SPTAlbumDataLoader

- (void)loadDataForAlbumNamed:(NSString *)albumName
{
    NSArray<SPTTrack *> *tracks = @[
        [[SPTTrack alloc] initWithName:@"Beautiful Day" length:231],
        [[SPTTrack alloc] initWithName:@"Where the Streets Have No Name" length:172],
        [[SPTTrack alloc] initWithName:@"Elevation" length:301]
    ];
    
    [self.delegate albumDataLoader:self didLoadArtistName:@"U2" tracks:tracks forAlbumNamed:albumName];
}

@end
