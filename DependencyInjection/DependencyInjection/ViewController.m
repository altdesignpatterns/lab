#import "ViewController.h"
#import "SPTEventLogger.h"

@interface ViewController ()

@property (nonatomic, strong, readonly) SPTEventLogger *eventLogger;

@end

@implementation ViewController

- (instancetype)initWithEventLogger:(SPTEventLogger *)eventLogger
{
    self = [super initWithNibName:nil bundle:nil];
    
    if (self) {
        _eventLogger = eventLogger;
        self.title = @"View controller";
    }
    
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    UIButton *goToAlbumButton = [UIButton new];
    [goToAlbumButton setTitle:@"Go to Album" forState:UIControlStateNormal];
    [goToAlbumButton addTarget:self action:@selector(goToAlbumButtonTapped:) forControlEvents:UIControlEventTouchUpInside];
    [goToAlbumButton sizeToFit];
    goToAlbumButton.center = self.view.center;
    [self.view addSubview:goToAlbumButton];
}

- (void)goToAlbumButtonTapped:(UIButton *)button
{
    [self.eventLogger logEventNamed:@"albumButtonTapped"];
}

@end
