//
//  BaseSort.h
//  Algorithm
//
//  Created by 丁巍 on 2019/10/22.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BaseSort : NSObject

/** 排序 */
- (void)sort;

/** 比较大小 0:相等  1:a>b   -1:a< b */
- (NSInteger)compareWithA:(NSInteger)a b:(NSInteger)b;

/** 交换元素 */
- (void)exchangeWithA:(NSInteger)a b:(NSInteger)b;


@property (nonatomic, strong) NSMutableArray *sortArray;

@end

NS_ASSUME_NONNULL_END
