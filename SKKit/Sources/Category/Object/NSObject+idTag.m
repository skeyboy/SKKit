//
//  NSObject+idTag.m
//  ElbF
//
//  Created by sk on 2018/7/25.
//  Copyright © 2018 gener-tech. All rights reserved.
//

#import "NSObject+idTag.h"
#import <objc/runtime.h>
@implementation NSObject (idTag)
#define idTagKey @"NSObject (idTag)"
-(void)setIdTag:(NSString *)idTag{
    objc_setAssociatedObject(self, idTagKey, idTag, OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSString *)idTag{
    return objc_getAssociatedObject(self, idTagKey );
}
#define infoMsgKey @"infoMsgKey"
-(void)setInfoMsg:(NSString *)infoMsg{
    objc_setAssociatedObject(self, infoMsgKey,
                             infoMsg,
                             OBJC_ASSOCIATION_COPY_NONATOMIC);
}
-(NSString *)infoMsg{
    return objc_getAssociatedObject(self, infoMsgKey);
}
@end
