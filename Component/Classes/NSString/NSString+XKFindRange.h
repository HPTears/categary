//
//  NSString+XKFindRange.h
//  XKSquare
//
//  Created by RyanYuan on 2019/7/18.
//  Copyright © 2019 xk. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSString (XKFindRange)

/**
 *  在字符串的|aRange|范围内查找介于 |leftSeperator| 和 |rightSeperator| 之间的range
 *
 *  @param leftSeperator  左分隔符
 *  @param rightSeperator 右分隔符
 *  @param aRange         查找范围
 *
 *  @return 返回NSRange，其location指 |leftSeperator| 所在位置，length指从 |leftSeperator| 开始到包含 |rightSeperator| 止的长度
 */
- (NSRange)rangeOfStringBetweenLeftSeperator:(NSString *)leftSeperator andRightSeperator:(NSString *)rightSeperator range:(NSRange)aRange;

@end

NS_ASSUME_NONNULL_END
