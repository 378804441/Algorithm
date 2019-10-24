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

- (void)sort{
    double StartTime = CACurrentMediaTime();
    
    [self initiaSortlize];
    
    double launchTime = (CACurrentMediaTime() - StartTime);
    printf("排序消耗时间:%f ms\n", launchTime);
}



#pragma mark - abstract method

- (void)initiaSortlize{}



@end
