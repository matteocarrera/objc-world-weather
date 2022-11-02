#import <Foundation/Foundation.h>
#import "WeatherResponse.h"

@implementation WeatherResponse

- (instancetype)initWithDictionary:(NSDictionary*)dictionary {
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dictionary];
    }

    return self;
}

@end
