//
//  UnionFindBase.h
//  Algorithm
//
//  Created by 丁巍 on 2019/10/17.
//  Copyright © 2019 丁巍. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN


#define ERROR_CODE   -1

@interface UnionFindBase : NSObject


#pragma mark - public method

/**
 * 初始化并查集
 * size : 并查集大小
 */
- (instancetype)initWithSize:(NSInteger)size;

/** 查看 v1 v2 是否在同一个集合 */
- (BOOL)isSameWithV1:(NSInteger)v1 v2:(NSInteger)v2;

/** 检测是否合法 */
- (BOOL)checkWithV:(NSInteger)v;



#pragma mark - abstract method

/** 查找v所属的集合 (根节点) */
- (NSInteger)findWithV:(NSInteger)v;

/** 合并 v1 v2 */
- (void)unionWithV1:(NSInteger)v1 v2:(NSInteger)v2;



#pragma mark - public ivar

/** 存储父节点数组 (这里直接选用可变数组, 省的自己用不可变数组后要考虑扩容问题) */
@property (nonatomic, strong) NSMutableArray *parents;


@end

NS_ASSUME_NONNULL_END
