#import "CityWeatherViewController.h"

@interface CityWeatherModuleAssembly : NSObject

+ (CityWeatherViewController *) createModuleWithCity: (NSString *)city;

@end
