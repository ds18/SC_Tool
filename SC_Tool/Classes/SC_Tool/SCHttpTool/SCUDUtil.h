//
//  SCUDUtil.h
//  sooc-ios_new
//
//  Created by 郭琦 on 16/6/29.
//  Copyright © 2016年 SOOC. All rights reserved.
//  将UserDefault存储相关的参数读取方法全部放在此类中, 确保不会产生参数冲突或者参数类型的不确定性

#import <Foundation/Foundation.h>

@interface SCUDUtil : NSObject

@property (nonatomic, assign) NSString *xtdz;//节点域名

@property (nonatomic, assign) NSString *oauth_token;

@property (nonatomic, assign) NSString *oauth_token_secret;

@property (nonatomic, assign) BOOL islogin;

+ (SCUDUtil *)sharedInstance;

@end
