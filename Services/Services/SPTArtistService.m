#import "SPTArtistService.h"

@implementation SPTArtistService

@synthesize viewController = _viewController;

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        _viewController = [UIViewController new];
        _viewController.title = @"Artist";
        
        UIButton *goToAlbumButton = [UIButton new];
        [goToAlbumButton setTitle:@"Go to Album" forState:UIControlStateNormal];
        [goToAlbumButton addTarget:self action:@selector(goToAlbumButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
        [goToAlbumButton sizeToFit];
        goToAlbumButton.center = _viewController.view.center;
        [_viewController.view addSubview:goToAlbumButton];
    }
    
    return self;
}

- (void)goToAlbumButtonTapped:(UIButton *)button
{
    
}

#pragma mark - SPTService

- (NSSet<NSString *> *)dependencies
{
    return [NSSet new];
}

- (void)configureWithServiceSystem:(SPTServiceSystem *)serviceSystem
{
    // Grab dependencies
}

@end
