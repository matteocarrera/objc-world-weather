#import <Foundation/Foundation.h>
#import "Clouds.h"

@implementation Clouds

- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dictionary];
    }

    return self;
}

@end
