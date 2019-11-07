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

    for (NSInteger end=self.sortArray.count-1; end > 0; end--) {
        NSInteger index = 1;
        for (NSInteger begin=0; begin<end; begin++) {
            if ([self compareWithA:begin b:begin+1] > 0) {
                [self exchangeWithA:begin b:begin+1];
                index = begin+1;
            }
        }
        end = index;
    }
    
}


@end


