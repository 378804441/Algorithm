//
//  BubbleSort.m
//  Algorithm
//
//  Created by 丁巍 on 2019/10/22.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort


- (void)sort{
    
    NSMutableArray *sortArray = [@[@20, @12, @33, @64, @5, @7, @1, @9, @112] mutableCopy];
    
    for (NSInteger end=sortArray.count-1; end>0; end--) {
        NSInteger index = 1;
        for (NSInteger begin=0; begin<end; begin++) {
            NSInteger a = [sortArray[begin] integerValue];
            NSInteger b = [sortArray[begin+1] integerValue];
            if (a > b) {
                NSInteger c = a;
                [sortArray replaceObjectAtIndex:begin withObject:@(b)];
                [sortArray replaceObjectAtIndex:begin+1 withObject:@(c)];
                index = begin + 1;
            }
        }
        index = end;
    }
    
    NSLog(@"%@", sortArray);
}


@end
