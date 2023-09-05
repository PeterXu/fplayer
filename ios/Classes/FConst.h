#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FConst : NSObject

+ (NSString *) getMethodChannel;
+ (NSString *) getEventChannel;
+ (NSString *) getPlayerMethodChannel:(NSString *)pid;
+ (NSString *) getPlayerEventChannel:(NSString *)pid;

@end

NS_ASSUME_NONNULL_END
