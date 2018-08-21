//
//  UITextField+aop.m
//  ElbF
//
//  Created by sk on 2018/7/25.
//  Copyright © 2018 gener-tech. All rights reserved.
//

#import "UITextField+aop.h"
#import "NSObject+aop.h"
#import "NSObject+idTag.h"
@implementation UITextField (aop)
+(void)load{
    [[self class] swizzleMethod:@selector(text) withMethod:@selector(aop_text)];
}

-(NSString *)aop_text{
    
    NSString * textValue =  [self aop_text];
    if (textValue == nil || [textValue isKindOfClass:[NSNull class  ]]) {
       textValue = @"";
    }
    if (textValue.length == 0 && self.infoMsg) {
     }
    return textValue;
}
@end
