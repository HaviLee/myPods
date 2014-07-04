//
//  OVCClient.m
//  Pods
//
//  Created by Apple MBP on 14-7-3.
//  Copyright (c) 2014年 Apple MBP. All rights reserved.
//

#import "OVCClient.h"
#import "OVCModelResponseSerializer.h"

@implementation OVCClient

- (AFHTTPRequestOperation *)POST:(NSString *)URLString
                         headers:(NSDictionary *)headers
                      parameters:(NSDictionary *)parameters
                     resultClass:(Class)resultClass
                   resultKeyPath:(NSString *)keyPath
                      completion:(void (^)(AFHTTPRequestOperation *operation, id responseObject, NSError *error))block
{
    NSMutableURLRequest *request = [self.requestSerializer requestWithMethod:@"POST"
                                                                   URLString:[[NSURL URLWithString:URLString relativeToURL:self.baseURL] absoluteString]
                                                                     headers:headers
                                                                  parameters:parameters];
    
    
    AFHTTPRequestOperation *operation = [self HTTPRequestOperationWithRequest:request
                                                                  resultClass:resultClass
                                                                resultKeyPath:keyPath
                                                                   completion:block];
    [self.operationQueue addOperation:operation];
    
    return operation;
}
//内部的
- (AFHTTPRequestOperation *)HTTPRequestOperationWithRequest:(NSURLRequest *)urlRequest
                                                resultClass:(Class)resultClass
                                              resultKeyPath:(NSString *)keyPath
                                                 completion:(void (^)(AFHTTPRequestOperation *operation, id responseObject, NSError *error))block
{
    AFHTTPRequestOperation *requestOperation = [self HTTPRequestOperationWithRequest:urlRequest success:nil failure:nil];
    requestOperation.responseSerializer = [OVCModelResponseSerializer serializerWithURLMatcher:nil managedObjectContext:nil responseClass:resultClass errorModelClass:nil];
    
    if (block) {
        [requestOperation setCompletionBlockWithSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
            block(operation, responseObject, nil);
        } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
            block(operation, nil, error);
        }];
    }
    
    return requestOperation;
}

@end
