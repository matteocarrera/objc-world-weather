#import "CityWeatherViewController.h"

@implementation CityWeatherViewController

- (instancetype)init: (CityWeatherViewModel *)viewModel {
    self.viewModel = viewModel;
    return [super init];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Table view initializing
    
    UITableView *tableView = [[UITableView alloc] initWithFrame: self.tableView.frame
                                                          style: UITableViewStyleInsetGrouped];
    self.tableView = tableView;
    
    // Table view cell registering
    
    [[self tableView] registerClass: UITableViewCell.self forCellReuseIdentifier: @"DefaultCell"];
    
    // General configuring
    
    [[self view] setBackgroundColor:[UIColor systemGray6Color]];
    
    [[self navigationItem] setTitle: _viewModel.city];
    
    [[self.navigationController navigationBar] setPrefersLargeTitles: YES];
}

#pragma mark - UITableViewDataSource

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    return 1;
//}
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//    return self.viewModel.items.count;
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"DefaultCell" forIndexPath: indexPath];
//
//    [[cell textLabel] setText: self.viewModel.items[indexPath.row]];
//    [cell setAccessoryType: UITableViewCellAccessoryDisclosureIndicator];
//
//    return cell;
//}

#pragma mark - UITableViewDelegate

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    [tableView deselectRowAtIndexPath: indexPath animated: YES];
//}

@end
