#import <UIKit/UIKit.h>

@class SPTAlbumDataLoader;

NS_ASSUME_NONNULL_BEGIN

@interface SPTAlbumViewController : UIViewController

- (instancetype)initWithAlbumNamed:(NSString *)albumName dataLoader:(SPTAlbumDataLoader *)dataLoader;

@end

NS_ASSUME_NONNULL_END
