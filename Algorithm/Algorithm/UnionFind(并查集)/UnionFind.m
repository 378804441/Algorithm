//
//  UnionFind.m
//  Algorithm
//
//  Created by 丁巍 on 2019/10/16.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import "UnionFind.h"


#define ERROR_CODE   -1

@interface UnionFind()

/** 存储父节点数组 (这里直接选用可变数组, 省的自己用不可变数组后要考虑扩容问题) */
@property (nonatomic, strong) NSMutableArray *parents;

@end


@implementation UnionFind


/**
 * 初始化并查集
 * size : 并查集大小
 */
- (instancetype)initWithSize:(NSInteger)size{
    self = [super init];
    if (self) {
        self.parents = [NSMutableArray array];
        
        // 初始化父节点。没一个节点的父节点都是 当前节点
        for (int i=0; i<size; i++) {
            [self.parents addObject:@(i)];
        }
    }
    return self;
}



#pragma mark - public method

/** 查找v所属的集合 (根节点) */
- (NSInteger)findWithV:(NSInteger)v{
    if (![self __checkWithV:v]) return ERROR_CODE;
    return [self.parents[v] integerValue];
}


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


/** 查看 v1 v2 是否在同一个集合 */
- (BOOL)isSameWithV1:(NSInteger)v1 v2:(NSInteger)v2{
    return [self findWithV:v1] == [self findWithV:v2];
}



#pragma mark - private method

- (BOOL)__checkWithV:(NSInteger)v{
    if (v < 0  ||  v >= self.parents.count) {
        return NO;
    }
    return YES;
}

@end
