//
//  BubbleSort.m
//  Algorithm
//
//  Created by 丁巍 on 2019/10/22.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import "BubbleSort.h"

@implementation BubbleSort


- (void)initiaSortlize{

    
    for (NSInteger end=self.sortArray.count-1; end>0; end--) {
        NSInteger index = 1;
        for (NSInteger begin=0; begin<end; begin++) {
            NSInteger a = [self.sortArray[begin] integerValue];
            NSInteger b = [self.sortArray[begin+1] integerValue];
            if (a > b) {
                [self exchangeWithA:begin b:begin+1];
                index = begin+1;
            }
        }
        end = index;
    }
    
    
    
}


@end


