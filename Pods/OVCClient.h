//
//  OVCClient.h
//  Pods
//
//  Created by Apple MBP on 14-7-3.
//  Copyright (c) 2014年 Apple MBP. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"
#import <AFNetworking/AFHTTPRequestOperationManager.h>
#import <Accounts/Accounts.h>
//注：这个类是为了在overcoat外层再包一层数据，这样给我们的网络提供服务
@interface OVCClient : AFHTTPRequestOperationManager
//AFHTTPRequestOperationManager

- (AFHTTPRequestOperation *)POST:(NSString *)URLString
                         headers:(NSDictionary *)headers
                      parameters:(NSDictionary *)parameters
                     resultClass:(Class)resultClass
                   resultKeyPath:(NSString *)keyPath
                      completion:(void (^)(AFHTTPRequestOperation *operation, id responseObject, NSError *error))block;


//- (AFHTTPRequestOperation *)POST:(NSString *)URLString
//                         headers:(NSDictionary *)headers
//                      parameters:(NSDictionary *)parameters
//                     resultClass:(Class)resultClass
//                   resultKeyPath:(NSString *)keyPath
//       constructingBodyWithBlock:(void (^)(id <AFMultipartFormData> formData))block
//                      completion:(void (^)(AFHTTPRequestOperation *operation, id responseObject, NSError *error))block;


@end
