//
//  Result.m
//  Pods
//
//  Created by Apple MBP on 14-7-3.
//  Copyright (c) 2014年 Apple MBP. All rights reserved.
//

#import "Result.h"

@implementation Result


+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"result" : @"result",
             @"resultId" : @"resultId",
             @"resultMSG" : @"resultMSG",
             @"userToken" : @"userToken",
             @"userId"  : @"userId",
             };
}


@end
