#import <Foundation/Foundation.h>

@class SPTTrack;

@interface SPTAlbum : NSObject

@property (nonatomic, copy, readonly) NSString *name;
@property (nonatomic, copy, readonly) NSString *artistName;
@property (nonatomic, copy, readonly) NSArray<SPTTrack *> *tracks;

- (instancetype)initWithName:(NSString *)name
                  artistName:(NSString *)artistName
                      tracks:(NSArray<SPTTrack *> *)tracks;

@end
