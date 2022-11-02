@interface Weather: NSObject

@property (nonatomic) NSInteger id;
@property (nonatomic) NSString *icon;
@property (nonatomic) NSString *main;
@property (nonatomic) NSString *description;

- (instancetype)initWithDictionary: (NSDictionary *) dictionary;

@end
