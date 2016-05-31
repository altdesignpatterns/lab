#import <Foundation/Foundation.h>

@class SPTAlbumDataLoader;
@class SPTTrack;

NS_ASSUME_NONNULL_BEGIN

@protocol SPTAlbumDataLoaderDelegate <NSObject>

- (void)albumDataLoader:(SPTAlbumDataLoader *)dataLoader
      didLoadArtistName:(NSString *)artistName
                 tracks:(NSArray<SPTTrack *> *)tracks
          forAlbumNamed:(NSString *)albumName;

@end

@interface SPTAlbumDataLoader : NSObject

@property (nonatomic, weak, nullable) id<SPTAlbumDataLoaderDelegate> delegate;

- (void)loadDataForAlbumNamed:(NSString *)albumName;

@end

NS_ASSUME_NONNULL_END
