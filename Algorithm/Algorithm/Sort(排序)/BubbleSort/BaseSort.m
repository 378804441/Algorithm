//
//  BaseSort.m
//  Algorithm
//
//  Created by 丁巍 on 2019/10/22.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import "BaseSort.h"
#import <QuartzCore/CABase.h>

@implementation BaseSort


#pragma mark - public method

/** 排序 */
- (void)sort{
    self.sortArray = [@[@20, @12, @33, @64, @5, @7, @1, @9, @112] mutableCopy];
      
    double StartTime = CACurrentMediaTime();
    [self initiaSortlize];
    double launchTime = (CACurrentMediaTime() - StartTime);
    
    printf("排序消耗时间:%f ms\n", launchTime);
    NSLog(@"%@", self.sortArray);
}


/** 比较大小 0:相等  1:a>b   -1:a< b */
- (NSInteger)compareWithA:(NSInteger)a b:(NSInteger)b{
    if ((a < 0 || b < 0) ||
        (a >= self.sortArray.count || b >= self.sortArray.count)) {
        return 0;
    }
    NSInteger valueA = [self.sortArray[a] integerValue];
    NSInteger valueB = [self.sortArray[b] integerValue];
    if (valueA < valueB) {
        return -1;
    }else if(valueA > valueB){
        return 1;
    }else{
        return 0;
    }
}


/** 交换元素 */
- (void)exchangeWithA:(NSInteger)a b:(NSInteger)b{
    NSInteger tempC  = [self.sortArray[a] integerValue];
    NSInteger valueB = [self.sortArray[b] integerValue];
    [self.sortArray replaceObjectAtIndex:a withObject:@(valueB)];
    [self.sortArray replaceObjectAtIndex:b withObject:@(tempC)];
}



#pragma mark - abstract method

- (void)initiaSortlize{}



@end
