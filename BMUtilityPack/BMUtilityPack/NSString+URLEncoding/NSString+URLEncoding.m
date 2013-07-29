

#import "NSString+URLEncoding.h"

@implementation NSString (URLEncoding)

- (NSDictionary *)dictionaryRepresentation {
    NSString *plusesToSpaces = [self stringByReplacingOccurrencesOfString:@"+" withString:@" "];
    NSString *percentEscapesRemoved = [plusesToSpaces stringByReplacingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    NSArray *keyValuePairStrings = [percentEscapesRemoved componentsSeparatedByString:@"&"];
    
    NSMutableDictionary *dict = NSMutableDictionary.new;
    for (NSString *keyValuePairString in keyValuePairStrings) {
        NSMutableArray *keyValuePair = [keyValuePairString componentsSeparatedByString:@"="].mutableCopy;
        id value = keyValuePair.lastObject;
        [keyValuePair removeLastObject];
        id key = keyValuePair.lastObject;
        
        if (value && key) [dict setValue:value forKey:key];
    }
    
    return dict.copy;
}

@end
