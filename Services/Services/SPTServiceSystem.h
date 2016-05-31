#import <Foundation/Foundation.h>

@protocol SPTService;

NS_ASSUME_NONNULL_BEGIN

@interface SPTServiceSystem : NSObject

- (id<SPTService>)serviceWithIdentifier:(NSString *)identifier;

@end

NS_ASSUME_NONNULL_END
