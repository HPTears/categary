//
//  NSString+XKFindRange.m
//  XKSquare
//
//  Created by RyanYuan on 2019/7/18.
//  Copyright © 2019 xk. All rights reserved.
//

#import "NSString+XKFindRange.h"

@implementation NSString (XKFindRange)

- (NSRange)rangeOfStringBetweenLeftSeperator:(NSString *)leftSeperator
                               andRightSeperator:(NSString *)rightSeperator
                                           range:(NSRange)aRange {
    
    NSRange findRange = NSMakeRange(NSNotFound, 0);
    
    if ([self isKindOfClass:[NSNull class]]) {
        return findRange;
    }
    
    NSRange left = [self rangeOfString:leftSeperator options:NSCaseInsensitiveSearch range:aRange];
    if (left.length != 0) {
        NSInteger startIndex = left.location + left.length;
        NSInteger wholeStringLenth = aRange.location + aRange.length;
        NSInteger rightSearchLength = wholeStringLenth - startIndex;
        NSRange rightSearchRange = NSMakeRange(startIndex, rightSearchLength);
        
        NSRange right = [self rangeOfString:rightSeperator options:NSCaseInsensitiveSearch range:rightSearchRange];
        if (right.length != 0) {
            findRange.location = left.location;
            findRange = NSMakeRange(left.location, right.location - left.location + 1);
        }
    }
    
    return findRange;
}

@end
