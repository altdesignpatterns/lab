#import "SPTAlbumViewController.h"
#import "SPTAlbumDataLoader.h"
#import "SPTAlbum.h"

@interface SPTAlbumViewController () <SPTAlbumDataLoaderDelegate>

@property (nonatomic, copy, readonly) NSString *albumName;
@property (nonatomic, strong, readonly) SPTAlbumDataLoader *dataLoader;
@property (nonatomic, strong) SPTAlbum *album;

@end

@implementation SPTAlbumViewController

- (instancetype)initWithAlbumNamed:(NSString *)albumName dataLoader:(SPTAlbumDataLoader *)dataLoader
{
    self = [super initWithNibName:nil bundle:nil];
    
    if (self) {
        _albumName = [albumName copy];
        _dataLoader = dataLoader;
        _dataLoader.delegate = self;
    }
    
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    [self loadAlbum];
}

- (void)loadAlbum
{
    [self.dataLoader loadDataForAlbumNamed:self.albumName];
}

#pragma mark - SPTAlbumDataLoaderDelegate

- (void)albumDataLoader:(SPTAlbumDataLoader *)dataLoader
      didLoadArtistName:(NSString *)artistName
                 tracks:(NSArray<SPTTrack *> *)tracks
          forAlbumNamed:(NSString *)albumName
{
    self.album = [[SPTAlbum alloc] initWithName:albumName artistName:artistName tracks:tracks];
}

@end
