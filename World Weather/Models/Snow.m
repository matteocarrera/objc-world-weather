#import <Foundation/Foundation.h>
#import "Snow.h"

@implementation Snow

- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dictionary];
    }

    return self;
}

@end
