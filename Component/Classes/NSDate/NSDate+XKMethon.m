//
//  NSDate+XKMethon.m
//  XKComponentBaseProject
//
//  Created by 若醉 on 2019/7/5.
//  Copyright © 2019 Jamesholy. All rights reserved.
//

#import "NSDate+XKMethon.h"

@implementation NSDate (XKMethon)

- (NSString *)year {
    return [self stringByformatter:@"yyyy"];
}
- (NSString *)month {
    return [self stringByformatter:@"MM"];
}
- (NSString *)day {
    return [self stringByformatter:@"dd"];
}

- (NSString *)stringByformatter:(NSString *)formatterString {
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
    formatter.dateFormat = formatterString;
    return [formatter stringFromDate:self];
}

+ (NSDate *)dateByString:(NSString *)timeString formatter:(NSString *)formatter {
    NSDateFormatter *form = [[NSDateFormatter alloc] init];
    form.dateFormat = formatter;
    return [form dateFromString:timeString];
}

@end
