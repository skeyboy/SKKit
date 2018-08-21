//
//  UIApplication+helper.m
//  SKCalenderPicker
//
//  Created by sk on 2018/8/20.
//  Copyright © 2018 sk. All rights reserved.
//

#import "UIApplication+helper.h"

@implementation UIApplication (helper)
-(BOOL)isSimulator{
#if    TARGET_IPHONE_SIMULATOR || TARGET_OS_SIMULATOR
    return YES;
#else
    return NO;
#endif
}
-(NSString *)document{
    return [NSHomeDirectory() stringByAppendingPathComponent:@"Documents"];
}
-(NSString *)version{
  return   [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

}
-(NSString *)build{
    return [[[NSBundle mainBundle] infoDictionary] objectForKey:@"CFBundleVersion"];
}
-(NSString *)identifier{
    return [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleIdentifier"];
}
@end
