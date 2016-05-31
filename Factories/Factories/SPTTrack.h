#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SPTTrack : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, assign, readonly) NSTimeInterval length;

- (instancetype)initWithName:(NSString *)name
                      length:(NSTimeInterval)length;

@end

NS_ASSUME_NONNULL_END
