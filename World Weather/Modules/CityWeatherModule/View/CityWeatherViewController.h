#import <UIKit/UIKit.h>
#import "CityWeatherViewModel.h"

@interface CityWeatherViewController : UITableViewController

- (instancetype)init: (CityWeatherViewModel *)viewModel;

@property (strong, nonatomic) CityWeatherViewModel *viewModel;

@end
