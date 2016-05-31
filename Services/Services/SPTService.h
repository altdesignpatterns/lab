#import <UIKit/UIKit.h>

@class SPTServiceSystem;

NS_ASSUME_NONNULL_BEGIN

@protocol SPTService <NSObject>

@property (nonatomic, strong, readonly) NSSet<NSString *> *dependencies;
@property (nonatomic, strong, readonly) UIViewController *viewController;

- (void)configureWithServiceSystem:(SPTServiceSystem *)serviceSystem;

@end

NS_ASSUME_NONNULL_END
