#import <Foundation/Foundation.h>

@class SPTLogMessage;

NS_ASSUME_NONNULL_BEGIN

@interface SPTLogMessageSender : NSObject

+ (instancetype)sharedSender;
- (void)sendMessage:(SPTLogMessage *)message;

@end

NS_ASSUME_NONNULL_END
