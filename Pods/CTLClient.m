//
//  CTLClient.m
//  Pods
//
//  Created by Apple MBP on 14-7-3.
//  Copyright (c) 2014年 Apple MBP. All rights reserved.
//

#import "CTLClient.h"

@implementation CTLClient
static CTLClient *_client;
+ (CTLClient *)shareInstance
{
    if (_client == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            _client = [[CTLClient alloc]init];
        });
    }
    return _client;
}
- (id)init {
    NSString *FmServerUrl = @"http://112.124.70.127/";
    return [super initWithBaseURL:[NSURL URLWithString:FmServerUrl]];
}
- (void)userLogin:(NSDictionary *)parametersLogin parameters:(NSDictionary *)parameters completionBlock:(void (^)(Results *, NSError *))block
{
    [self POST:@"FMI/webresources/user/login" headers:parametersLogin parameters:parameters resultClass:Results.class resultKeyPath:nil completion:^(AFHTTPRequestOperation *operation, id responseObject, NSError *error) {
        block(responseObject, error);
    }];
}

@end
