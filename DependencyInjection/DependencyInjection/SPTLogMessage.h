#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SPTLogMessage : NSObject

@property (nonatomic, copy, readonly) NSString *eventName;
@property (nonatomic, strong, readonly) NSDate *date;

- (instancetype)initWithEventNamed:(NSString *)eventName
                              date:(NSDate *)date;

@end

NS_ASSUME_NONNULL_END
