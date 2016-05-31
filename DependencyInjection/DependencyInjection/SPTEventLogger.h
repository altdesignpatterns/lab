#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SPTEventLogger : NSObject

- (void)logEventNamed:(NSString *)eventName;

@end

NS_ASSUME_NONNULL_END
