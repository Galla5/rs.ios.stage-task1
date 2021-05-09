#import "NSString+ValidNumber.h"

@implementation NSString (ValidNumber)

- (BOOL)isValidNumber {
    NSNumberFormatter* numberFormatter = [[NSNumberFormatter alloc] init];
    NSNumber* number = [numberFormatter numberFromString:self];
    if (number != nil) {
        if (0 <= [self length] && [self length] <= 100) {
            return true;
        } else {
            return false;
        }
    } else {
        return false;
    }
}

@end
