//
//  NSDate+XKMethon.h
//  XKComponentBaseProject
//
//  Created by 若醉 on 2019/7/5.
//  Copyright © 2019 Jamesholy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSDate (XKMethon)

- (NSString *)year;
- (NSString *)month;
- (NSString *)day;

- (NSString *)stringByformatter:(NSString *)formatterString;
// string 转date
+ (NSDate *)dateByString:(NSString *)timeString formatter:(NSString *)formatter;
@end

NS_ASSUME_NONNULL_END
