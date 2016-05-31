#import <UIKit/UIKit.h>

@class SPTEventLogger;

NS_ASSUME_NONNULL_BEGIN

@interface ViewController : UIViewController

- (instancetype)initWithEventLogger:(SPTEventLogger *)eventLogger;

@end

NS_ASSUME_NONNULL_END

