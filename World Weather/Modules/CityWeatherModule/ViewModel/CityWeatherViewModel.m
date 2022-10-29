#import <Foundation/Foundation.h>
#import "CityWeatherViewModel.h"

@implementation CityWeatherViewModel

- (instancetype)initWithCity:(NSString *)city {
    self.city = city;
    return self;
}

@end
