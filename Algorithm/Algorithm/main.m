//
//  main.m
//  Algorithm
//
//  Created by 丁巍 on 2019/10/16.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BubbleSort.h"
#import "SelectionSort.h"
#import "InsertionSort.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BaseSort *sort = [InsertionSort new];
        [sort sort];
        
    }
    return 0;
}
