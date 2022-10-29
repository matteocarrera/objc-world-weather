#import <Foundation/Foundation.h>
#import "CityWeatherModuleAssembly.h"
#import "CityWeatherViewController.h"

@implementation CityWeatherModuleAssembly

+ (CityWeatherViewController *)createModuleWithCity:(NSString *)city {
    CityWeatherViewModel *viewModel = [[CityWeatherViewModel alloc] initWithCity: city];
    CityWeatherViewController *viewController = [[CityWeatherViewController alloc] init: viewModel];
    return viewController;
}

@end
