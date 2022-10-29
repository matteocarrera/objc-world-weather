#import <Foundation/Foundation.h>
#import "WeatherListViewModel.h"

@implementation WeatherListViewModel

- (instancetype)init {
    self.items = @[@"Moscow", @"Yekaterinburg", @"Ukhta", @"New-York City", @"Saint-Petersburg", @"Samara", @"Kemerovo"];
    return self;
}

@end
