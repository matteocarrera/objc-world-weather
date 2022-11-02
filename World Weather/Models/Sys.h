@interface Sys: NSObject

@property (nonatomic) NSString *country;
@property (nonatomic) NSString *id;
@property (nonatomic) NSString *sunrise;
@property (nonatomic) NSString *sunset;
@property (nonatomic) NSString *type;

- (instancetype)initWithDictionary: (NSDictionary *) dictionary;

@end

