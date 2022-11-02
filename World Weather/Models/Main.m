#import <Foundation/Foundation.h>
#import "Main.h"

@implementation Main

- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dictionary];
    }

    return self;
}

@end
