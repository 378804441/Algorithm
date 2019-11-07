//
//  InsertionSort.m
//  Algorithm
//
//  Created by 丁巍 on 2019/10/25.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import "InsertionSort.h"

@implementation InsertionSort


- (void)initiaSortlize{
        
    
    for (NSInteger begin=1; begin<self.sortArray.count; begin++) {
        NSInteger cur = begin;
        while (cur > 0 && [self compareWithA:cur b:cur-1] < 0) {
            [self exchangeWithA:cur b:cur-1];
            cur--;
        }
    }
    
    
    
    
    
    
    
    

    for (NSInteger begin=1; begin<self.sortArray.count; begin++) {
        NSInteger cur = begin;
        while (cur > 0 && [self compareWithA:cur b:cur-1] < 0) {
            [self exchangeWithA:cur b:cur-1];
            cur--;
        }
    }
    
    
}


@end
