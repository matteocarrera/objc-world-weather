@interface Main: NSObject

@property (nonatomic) NSString *feels_like;
@property (nonatomic) NSString *grnd_level;
@property (nonatomic) NSString *humidity;
@property (nonatomic) NSString *pressure;
@property (nonatomic) NSString *sea_level;
@property (nonatomic) NSString *temp;
@property (nonatomic) NSString *temp_max;
@property (nonatomic) NSString *temp_min;

- (instancetype)initWithDictionary: (NSDictionary *) dictionary;

@end

