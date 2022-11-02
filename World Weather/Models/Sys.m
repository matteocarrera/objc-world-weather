#import <Foundation/Foundation.h>
#import "Sys.h"

@implementation Sys

- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dictionary];
    }

    return self;
}

@end
