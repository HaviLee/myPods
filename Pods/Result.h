//
//  Result.h
//  Pods
//
//  Created by Apple MBP on 14-7-3.
//  Copyright (c) 2014年 Apple MBP. All rights reserved.
//

#import "MTLModel.h"
#import <MTLJSONAdapter.h>
@interface Result : MTLModel<MTLJSONSerializing>

@property (nonatomic, readonly) bool result;
@property (copy, nonatomic, readonly) NSNumber *resultId;
@property (copy, nonatomic, readonly) NSString *resultMSG;
@property (copy, nonatomic, readonly) NSString *userToken;
@property (copy, nonatomic, readonly) NSString *userId;

@end
