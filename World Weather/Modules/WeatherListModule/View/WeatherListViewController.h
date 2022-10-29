#import <UIKit/UIKit.h>
#import "WeatherListViewModel.h"

@interface WeatherListViewController : UITableViewController

- (instancetype)init: (WeatherListViewModel *)viewModel;

@property (strong, nonatomic) WeatherListViewModel *viewModel;

@end
