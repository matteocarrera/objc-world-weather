#import <Foundation/Foundation.h>
#import "CityWeatherViewModel.h"
#import "WeatherResponse.h"

@implementation CityWeatherViewModel

- (instancetype)initWithCity:(NSString *)city {
    self.city = city;
    return self;
}

- (void) viewDidLoad {
    NSString *key = @"72f4694fc6cad83cdf15d55fb9c3c74e";
    NSString *urlString = [NSString stringWithFormat: @"http://api.openweathermap.org/data/2.5/weather?q=%@&APPID=%@&units=metric", _city, key];
    
    [self getDataFrom: urlString
    completionHandler: ^(NSData * _Nullable data,
                         NSURLResponse * _Nullable response,
                         NSError * _Nullable error) {
        NSString *dataString = [[NSString alloc] initWithData: data encoding: NSUTF8StringEncoding];
        NSError *decodingError;
        NSData *jsonData = [dataString dataUsingEncoding: NSUTF8StringEncoding];
        
        id jsonObject = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&decodingError];
        
        if (decodingError) {
            NSLog(@"Error parsing JSON: %@", decodingError);
            return;
        }
        
        if (![jsonObject isKindOfClass:[NSDictionary class]]) {
            NSLog(@"Error parsing JSON: incorrect response type");
            return;
        }
        
        NSDictionary *jsonDictionary = (NSDictionary *)jsonObject;
        WeatherResponse *weatherResponse = [[WeatherResponse alloc] initWithDictionary:jsonDictionary];
        
        // future
    }];
}

- (void) getDataFrom:(NSString *)url
   completionHandler:(void (^)(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error))completionHandler {
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] init];
    [request setHTTPMethod: @"GET"];
    [request setURL: [NSURL URLWithString: url]];

    [[[NSURLSession sharedSession] dataTaskWithRequest: request
                                     completionHandler: completionHandler] resume];
}

@end
