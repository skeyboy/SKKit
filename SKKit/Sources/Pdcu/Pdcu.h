//
//  Pdcu.h
//  SKCalenderPicker
//
//  Created by sk on 2018/8/20.
//  Copyright © 2018 sk. All rights reserved.
//

#ifndef Pdcu_h
#define Pdcu_h



#define MINUTE 60
#define HOUR MINUTE * 60
#define DAY MINUTE * HOUR * 24
#define WEEK 7 * DAY

#define ProR(type, pro) @property(readonly, nonatomic) type * pro;
#define ProRAssign(type, pro) @property(readonly, assign) type pro ;
#define ProBlock(block, pro) @property(copy, nonatomic) block pro;
#define ProCopy(type, pro) @property(copy, nonatomic) type * pro;
#define ProStrong(type, pro) @property(strong, nonatomic) type * pro;
#define ProAsign(type, pro) @property(assign, nonatomic) type  pro;

#define OBJ_COPY - (instancetype)initWithCoder:(NSCoder *)aDecoder { \
self = [super init]; \
return [self modelInitWithCoder:aDecoder]; \
}\
- (void)encodeWithCoder:(nonnull NSCoder *)aCoder {\
[self modelEncodeWithCoder:aCoder];\
}\
- (id)copyWithZone:(NSZone *)zone {\
return [self modelCopy];\
}\

#endif /* Pdcu_h */
