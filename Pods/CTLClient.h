//
//  CTLClient.h
//  Pods
//
//  Created by Apple MBP on 14-7-3.
//  Copyright (c) 2014年 Apple MBP. All rights reserved.
//

#import "OVCClient.h"
#import "Result.h"
#import "Results.h"
@interface CTLClient : OVCClient

+ (CTLClient*)shareInstance;

//用户登录接口
//- (void)thirdPartLoginSina:(NSDictionary *)parametersLogin completionBlock:(void (^)(ThirdPartLoginSina *thirdPartLoginSina, NSError *error))block;
- (void)userLogin:(NSDictionary *)parametersLogin parameters:(NSDictionary *)parameters completionBlock:(void (^)(Results *logInResult, NSError *error))block;

@end
