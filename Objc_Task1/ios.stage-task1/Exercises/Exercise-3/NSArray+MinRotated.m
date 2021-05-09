#import "NSArray+MinRotated.h"

@implementation NSArray (MinRotated)

- (NSNumber *)minRotated {
    NSNumber *minNumber = [self firstObject];
    for (NSNumber* item in self) {
        if ([minNumber intValue] >= [item intValue]) {
            minNumber = item;
        }
    }
    return minNumber;
}

@end
