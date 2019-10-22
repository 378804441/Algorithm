//
//  QuickUnion.m
//  Algorithm
//
//  Created by 丁巍 on 2019/10/18.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import "QuickUnion.h"

@implementation QuickUnion


#pragma mark - abstract method

/** 合并 v1 v2 */
- (void)unionWithV1:(NSInteger)v1 v2:(NSInteger)v2{

}

/** 查找v所属的集合 (根节点) */
- (NSInteger)findWithV:(NSInteger)v{
    if (![self checkWithV:v]) return ERROR_CODE;
    return [self.parents[v] integerValue];
}


@end
