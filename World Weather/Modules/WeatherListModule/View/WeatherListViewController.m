#import "WeatherListViewController.h"
#import "CityWeatherModuleAssembly.h"

@implementation WeatherListViewController

- (instancetype)init: (WeatherListViewModel *)viewModel {
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
    
    [[self navigationItem] setTitle:@"Weather list"];
    
    [[self.navigationController navigationBar] setPrefersLargeTitles: YES];
    
    // Navigation bar buttons configuring
    
    UIBarButtonItem *infoButton = [[UIBarButtonItem alloc] initWithImage: [UIImage systemImageNamed: @"info.circle"]
                                                                   style: UIBarButtonItemStylePlain
                                                                  target: self
                                                                  action: @selector(infoButtonClicked)];
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem: UIBarButtonSystemItemAdd
                                                                               target: self
                                                                               action: @selector(addButtonClicked)];
    
    [addButton setEnabled: NO];

    [[self navigationItem] setLeftBarButtonItem: infoButton];
    [[self navigationItem] setRightBarButtonItem: addButton];
}

- (void)infoButtonClicked {
    [self presentInfoAlertWithTitle: @"Made by Vladimir Makarov"
                            message: @"This is a test Objective-C application for a Middle-2 grade in Touch Instinct"];
}

- (void)addButtonClicked {
    printf("Add\n");
}

- (void)presentInfoAlertWithTitle: (NSString *)title message:(NSString *)message {
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle: title
                                                                             message: message
                                                                      preferredStyle: UIAlertControllerStyleAlert];
    
    UIAlertAction *okAction = [UIAlertAction actionWithTitle: @"OK" style: UIAlertActionStyleCancel handler: nil];
    
    [alertController addAction: okAction];
    
    [self presentViewController: alertController animated: YES completion: nil];
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.viewModel.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: @"DefaultCell" forIndexPath: indexPath];
    
    [[cell textLabel] setText: _viewModel.items[indexPath.row]];
    [cell setAccessoryType: UITableViewCellAccessoryDisclosureIndicator];

    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath: indexPath animated: YES];
    
    NSString *city = _viewModel.items[indexPath.row];
    
    CityWeatherViewController * viewController = [CityWeatherModuleAssembly createModuleWithCity: city];
    
    [[self navigationController] pushViewController: viewController animated: YES];
}

@end
