//
//  Results.h
//  Pods
//
//  Created by Apple MBP on 14-7-4.
//  Copyright (c) 2014年 Apple MBP. All rights reserved.
//

#import "OVCResponse.h"

@interface newResult : OVCResponse

//@property (nonatomic, readonly) bool result;
@property (copy, nonatomic, readonly) NSNumber *resultId;
@property (copy, nonatomic, readonly) NSString *resultMSG;
@property (copy, nonatomic, readonly) NSString *userToken;
@property (copy, nonatomic, readonly) NSString *userId;

@end

@interface Results : OVCResponse

@property (nonatomic, readonly) newResult *result;
@property (copy, nonatomic, readonly) NSNumber *resultId;
@property (copy, nonatomic, readonly) NSString *resultMSG;
@property (copy, nonatomic, readonly) NSString *userToken;
@property (copy, nonatomic, readonly) NSString *userId;

@end


