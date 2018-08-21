//
//  NSObject+aop.h
//  ElbF
//
//  Created by sk on 2018/7/25.
//  Copyright © 2018 gener-tech. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (aop)

/**
 进行方法交换已完成特定的全局功能

 @param origSelector 被替换的原始方法
 @param newSelector 个人进行一定的逻辑处理的方法
 @note xx =≥ aop_xx
 */
+(void)swizzleMethod:(SEL)origSelector
          withMethod:(SEL)newSelector ;
@end
