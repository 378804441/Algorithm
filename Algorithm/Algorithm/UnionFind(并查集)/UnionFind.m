//
//  UnionFind.m
//  Algorithm
//
//  Created by 丁巍 on 2019/10/16.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import "UnionFind.h"


@implementation UnionFind


#pragma mark - abstract method

/** 合并 v1 v2 */
- (void)unionWithV1:(NSInteger)v1 v2:(NSInteger)v2{
    NSInteger parent1 = [self findWithV:v1];
    NSInteger parent2 = [self findWithV:v2];
    if (parent1 == ERROR_CODE || parent2 == ERROR_CODE) return;
    
    // 本身就在同一个集合中, 没必要合并
    if (parent1 == parent2) return;
    
    // 循环整个父数组将 v1 的所有集合父节点拿出来, 全部替换成 v2集合的父节点值
    for (int i=0; i<self.parents.count; i++) {
        NSInteger tempP1 = [self.parents[i] integerValue];
        if (tempP1 == parent1) {
            [self.parents replaceObjectAtIndex:i withObject:@(parent2)];
        }
    }
}

/** 查找v所属的集合 (根节点) */
- (NSInteger)findWithV:(NSInteger)v{
    if (![self checkWithV:v]) return ERROR_CODE;
    return [self.parents[v] integerValue];
}


@end
