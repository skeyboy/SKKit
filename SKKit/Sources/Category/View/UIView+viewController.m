//
//  UIView+viewController.m
//  SKCalenderPicker
//
//  Created by sk on 2018/8/20.
//  Copyright © 2018 sk. All rights reserved.
//

#import "UIView+viewController.h"
@implementation UIView (viewController)
-(UIViewController *)viewController{
    UIResponder *next = [self nextResponder];
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
        }
        next = [next nextResponder];
    } while (next != nil);
    
    return nil;
}
-(UINavigationController *)navigationController{
    return  self.viewController.navigationController;
}

@end
