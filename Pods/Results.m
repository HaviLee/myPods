//
//  Results.m
//  Pods
//
//  Created by Apple MBP on 14-7-4.
//  Copyright (c) 2014年 Apple MBP. All rights reserved.
//

#import "Results.h"

@implementation Results
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"resultId" : @"resultId",
             @"resultMSG" : @"resultMSG",
             @"userToken" : @"userToken",
             @"userId"  : @"userId",
             };
}

+ (NSValueTransformer *)newResultJSONTransformer
{
    return [NSValueTransformer mtl_JSONArrayTransformerWithModelClass:[newResult class]];
}
@end

@implementation newResult

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"resultId" : @"resultId",
             @"resultMSG" : @"resultMSG",
             @"userToken" : @"userToken",
             @"userId"  : @"userId",
             };
}

@end
