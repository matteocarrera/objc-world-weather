@interface CityWeatherViewModel : NSObject

@property (strong, nonatomic) NSString *city;

- (instancetype)initWithCity: (NSString *)city;

@end
