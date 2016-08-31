//
//  SCToolManager.m
//  SC_Tool
//
//  Created by 段帅 on 16/8/29.
//  Copyright © 2016年 段帅. All rights reserved.
//

#import "SCToolManager.h"
#import <AFNetworking/AFHTTPSessionManager.h>
#import "SCHttpRequest.h"

@implementation SCToolManager



static void *VcHTTPClient_;

+(instancetype)shareInstance{
    static SCToolManager *intance = nil;  
    static dispatch_once_t predicate;  
    dispatch_once(&predicate, ^{  
        intance = [[self alloc] init];   
    });  
    return intance;  
     
    
}

+(SCHttpRequest *)shareInstansInitRequestWithAPI:(NSString *)api withPara:(NSDictionary *)para{
    
    
    SCHttpRequest *request = [[SCHttpRequest alloc]initWithApi:api params:para];
    
    return request;
    
}



#pragma mark - 网络请求

- (void)doPOSTConnect:(SCHttpRequest *)req
                start:(HttpConnectStartBlock)startBlock
              success:(HttpConnectSuccessBlock)successBlock
              failure:(HttpConnectFailureBlock)failureBlock
               finish:(HttpConnectFinishBlock)finishBlock{
    
    [self.HTTPClient doHTTPPost:req
                          start:^(SCHttpRequest *req) {
                              if (startBlock) {
                                  
                                  startBlock(req);
                              }
                          }
                        success:^(SCHttpRequest *req, SCHttpResponse *resp) {
                            NSLog(@"%@",resp.originalDictionary);
                            
                            successBlock(req,resp);
                        }
                        failure:^(SCHttpRequest *req, NSError *error) {
                            if (failureBlock) {
                                failureBlock(req,error);
                            }
                        }
                         finish:^(SCHttpRequest *req, BOOL success) {
                             if (finishBlock) {
                                 finishBlock(req,success);
                             }
                         }];
    
}



- (void)setHTTPClient:(SCHttpManager *)HTTPClient {
    objc_setAssociatedObject(self, &VcHTTPClient_, HTTPClient, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (SCHttpManager *)HTTPClient {
    if (!VcHTTPClient_) {
        self.HTTPClient = [[SCHttpManager alloc] init];
    }
    return objc_getAssociatedObject(self, &VcHTTPClient_);
}







#pragma mark - ------SCImageTool
+(UIImage *)imageWithName:(NSString *)name  InBundle:(NSString *)bundle className:(Class)classss{
    NSBundle *bundle1 = [NSBundle bundleForClass:classss];
    NSURL *url = [bundle1 URLForResource:bundle withExtension:@"bundle"];
    NSBundle *imageBundle = [NSBundle bundleWithURL:url];
    UIImage *image = [UIImage imageNamed:name inBundle:imageBundle compatibleWithTraitCollection:nil];
    
    return image;
    
}




@end
