#import "FConst.h"

#define FF_CHANNEL              @"befovy.com/fijk"
#define FF_PLAYER_CHANNEL(p)    @"befovy.com/fijkplayer" # p


@implementation FConst {
}

- (instancetype)init {
     self = [super init];
     return self;
}

+ (NSString *) getMethodChannel {
    return [FF_CHANNEL stringByAppendingString:@""];
}

+ (NSString *) getEventChannel {
    return [FF_CHANNEL stringByAppendingString:@"/event"];
}

+ (NSString *) getPlayerMethodChannel:(NSString *)pid {
    return [FF_PLAYER_CHANNEL(/) stringByAppendingString:pid];
}

+ (NSString *) getPlayerEventChannel:(NSString *)pid {
    return [FF_PLAYER_CHANNEL(/event/) stringByAppendingString:pid];
}

@end