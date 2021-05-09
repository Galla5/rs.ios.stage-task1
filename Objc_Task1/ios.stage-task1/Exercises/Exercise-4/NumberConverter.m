#import "NumberConverter.h"

@implementation NumberConverter

- (NSArray *)numberConverter:(NSNumber *)number {
    if (number == nil) {
        return @[];
    }
    NSNumber *positiveNumber = [NSNumber numberWithDouble:fabs([number doubleValue])];
    NSMutableArray *characters = [[NSMutableArray alloc] initWithCapacity:[[positiveNumber stringValue] length]];
    for (int i=0; i < [[positiveNumber stringValue] length]; i++) {
        NSString *ichar  = [NSString stringWithFormat:@"%c", [[positiveNumber stringValue] characterAtIndex:i]];
        [characters insertObject:ichar atIndex:0];
    }
    return characters;
}

@end
