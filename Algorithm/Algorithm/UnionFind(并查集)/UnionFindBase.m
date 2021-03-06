//
//  UnionFindBase.m
//  Algorithm
//
//  Created by 丁巍 on 2019/10/17.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import "UnionFindBase.h"

@implementation UnionFindBase


#pragma mark - public method

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


/** 查看 v1 v2 是否在同一个集合 */
- (BOOL)isSameWithV1:(NSInteger)v1 v2:(NSInteger)v2{
    return [self findWithV:v1] == [self findWithV:v2];
}


/** 检测是否合法 */
- (BOOL)checkWithV:(NSInteger)v{
    if (v < 0  ||  v >= self.parents.count) {
        return NO;
    }
    return YES;
}



#pragma mark - abstract method

/** 查找v所属的集合 (根节点) */
- (NSInteger)findWithV:(NSInteger)v{return ERROR_CODE;}

/** 合并 v1 v2 */
- (void)unionWithV1:(NSInteger)v1 v2:(NSInteger)v2{}


@end
