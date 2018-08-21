//
//  NSObject+aop.m
//  ElbF
//
//  Created by sk on 2018/7/25.
//  Copyright © 2018 gener-tech. All rights reserved.
//

#import "NSObject+aop.h"
#import <objc/runtime.h>
@implementation NSObject (aop)
+(void)swizzleMethod:(SEL)origSelector
          withMethod:(SEL)newSelector {
    Class class = [self class];
    
    Method originalMethod = class_getInstanceMethod(class, origSelector);
    Method swizzledMethod = class_getInstanceMethod(class, newSelector);
    
    BOOL didAddMethod = class_addMethod(class,
                                        origSelector,
                                        method_getImplementation(swizzledMethod),
                                        method_getTypeEncoding(swizzledMethod));
    if (didAddMethod) {
        class_replaceMethod(class,
                            newSelector,
                            method_getImplementation(originalMethod),
                            method_getTypeEncoding(originalMethod));
    } else {
        method_exchangeImplementations(originalMethod, swizzledMethod);
    }
}
@end
