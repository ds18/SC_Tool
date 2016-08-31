//
//  SCHttpUtil.m
//  sooc-ios_new
//
//  Created by 郭琦 on 16/6/29.
//  Copyright © 2016年 SOOC. All rights reserved.
//

#import "SCHttpUtil.h"

#import "SCUDUtil.h"

static NSTimeInterval _timeoutInterval = 30;

@implementation SCHttpManager

- (id)init {
    return [self initWithBaseURL:nil];
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (self) {
        
        self.requestSerializer = [AFJSONRequestSerializer serializer];
        self.responseSerializer = [AFJSONResponseSerializer serializer];
        
        [self.requestSerializer setValue:@"gzip" forHTTPHeaderField:@"Accept-Encoding"];
        //self.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
        
    }
    return self;
}

- (AFHTTPRequestOperation *)doHTTPPost:(SCHttpRequest*)req
                                 start:(HttpConnectStartBlock)startBlock
                               success:(HttpConnectSuccessBlock)successBlock
                               failure:(HttpConnectFailureBlock)failureBlock
                                finish:(HttpConnectFinishBlock)finishBlock{
    
    NSString *xtdz = [SCUDUtil sharedInstance].xtdz;
    
    NSString *url = [NSString stringWithFormat:@"%@/index.php?s=api%@/%@",@"http://test.sooc.com",req.apiVersion,req.api];
    
    NSLog(@"SCHTTP-url:%@-para:%@",url,req.params);
    
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"POST"
                                                                                 URLString:url
                                                                                parameters:req.params
                                                                                     error:nil];
    request.timeoutInterval = _timeoutInterval;
    
    AFHTTPRequestOperation *operation = [self HTTPRequestOperationWithRequest:request
                                                                      success:^(AFHTTPRequestOperation *operation, id responseObject) {
                                                                          SCHttpResponse *resp = [[SCHttpResponse alloc]initWithDictionary:responseObject];
                                                                          resp.opertaion = operation;
                                                                          if (successBlock) {
                                                                              successBlock(req,resp);
                                                                          }
                                                                          if (finishBlock) {
                                                                              finishBlock(req,YES);
                                                                          }
                                                                          
                                                                      }
                                                                      failure:^(AFHTTPRequestOperation *operation, NSError *error) {
                                                                          //未知错误
                                                                          if (failureBlock) {
                                                                              failureBlock(req,error);
                                                                          }
                                                                          if (finishBlock) {
                                                                              finishBlock(req,NO);
                                                                          }
                                                                      }];
    [self.operationQueue addOperation:operation];
    if (startBlock) {
        startBlock(req);
    }
    return operation;
    
    
}

@end
