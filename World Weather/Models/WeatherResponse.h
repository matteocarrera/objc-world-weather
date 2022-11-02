#import "Clouds.h"
#import "Weather.h"
#import "Main.h"
#import "Snow.h"
#import "Sys.h"
#import "Wind.h"
#import "Coordinates.h"

@interface WeatherResponse: NSObject

@property (nonatomic) NSString *base;
@property (nonatomic) Clouds *clouds;
@property (nonatomic) NSString *cod;
@property (nonatomic) Coordinates *coord;
@property (nonatomic) NSString *dt;
@property (nonatomic) NSString *id;
@property (nonatomic) Main *main;
@property (nonatomic) NSString *name;
@property (nonatomic) Snow *snow;
@property (nonatomic) Sys *sys;
@property (nonatomic) NSString *timezone;
@property (nonatomic) NSString *visibility;
@property (nonatomic) NSArray<Weather *> *weather;
@property (nonatomic) Wind *wind;

- (instancetype)initWithDictionary: (NSDictionary *) dictionary;

@end
