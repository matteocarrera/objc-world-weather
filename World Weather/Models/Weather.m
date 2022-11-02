#import <Foundation/Foundation.h>
#import "Weather.h"

@implementation Weather

@synthesize description;

- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dictionary];
    }

    return self;
}

@end
