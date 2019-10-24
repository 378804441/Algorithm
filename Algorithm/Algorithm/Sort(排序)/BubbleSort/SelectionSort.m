//
//  SelectionSort.m
//  Algorithm
//
//  Created by 丁巍 on 2019/10/23.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import "SelectionSort.h"

@implementation SelectionSort


- (void)initiaSortlize{
    
    NSMutableArray *sortArray = [@[@20, @12, @33, @64, @5, @7, @1, @9, @112] mutableCopy];
    
    for (NSInteger end=sortArray.count-1; end>0; end--) {
        NSInteger max = 0;
        for (NSInteger begin=1; begin<=end; begin++) {
            NSInteger a = [sortArray[max] integerValue];
            NSInteger b = [sortArray[begin] integerValue];
            if (a <= b) {
                max = begin;
            }
        }
        
        NSInteger c = [sortArray[max] integerValue];
        [sortArray replaceObjectAtIndex:max withObject:sortArray[end]];
        [sortArray replaceObjectAtIndex:end withObject:@(c)];
    }
    
    NSLog(@"%@", sortArray);
}


@end
