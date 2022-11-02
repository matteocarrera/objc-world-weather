@interface Wind: NSObject

@property (nonatomic) NSString *deg;
@property (nonatomic) NSString *gust;
@property (nonatomic) NSString *speed;

- (instancetype)initWithDictionary: (NSDictionary *) dictionary;

@end

