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
    
    for (NSInteger end=self.sortArray.count-1; end>0; end--) {
        NSInteger max=0;
        for (NSInteger begin=1; begin<=end; begin++) {
            if ([self compareWithA:max b:begin] <= 0) {
                max = begin;
            }
        }
        [self exchangeWithA:max b:end];
    }
    
}


@end
