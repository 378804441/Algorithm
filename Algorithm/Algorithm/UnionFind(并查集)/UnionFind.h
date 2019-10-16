//
//  UnionFind.h
//  Algorithm
//
//  Created by 丁巍 on 2019/10/16.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface UnionFind : NSObject


/**
 * 初始化并查集
 * size : 并查集大小
 */
- (instancetype)initWithSize:(NSInteger)size;

/** 查找v所属的集合 (根节点) */
- (NSInteger)findWithV:(NSInteger)v;

/** 合并 v1 v2 */
- (void)unionWithV1:(NSInteger)v1 v2:(NSInteger)v2;

/** 查看 v1 v2 是否在同一个集合 */
- (BOOL)isSameWithV1:(NSInteger)v1 v2:(NSInteger)v2;


@end

NS_ASSUME_NONNULL_END
