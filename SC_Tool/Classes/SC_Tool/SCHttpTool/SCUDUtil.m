//
//  SCUDUtil.m
//  sooc-ios_new
//
//  Created by 郭琦 on 16/6/29.
//  Copyright © 2016年 SOOC. All rights reserved.
//

#import "SCUDUtil.h"

static SCUDUtil *__userDefaultUtils = nil;

@implementation SCUDUtil
{
    NSUserDefaults *defaults;
}


+ (SCUDUtil *)sharedInstance {
    @synchronized(self){
        if (__userDefaultUtils == nil) {
            __userDefaultUtils = [[SCUDUtil alloc] init];
        }
    }
    return __userDefaultUtils;
}

- (id)init {
    if (self = [super init]) {
        defaults = [NSUserDefaults standardUserDefaults];
    }
    return self;
}

#pragma mark - Get & Set

- (NSString *)xtdz {
    return [defaults objectForKey:@"xtdz"]?:@"";
}
-(void)setXtdz:(NSString *)xtdz{
    [SCUDUtil saveObject:xtdz key:@"xtdz"];
}

-(NSString *)oauth_token{
    return [SCUDUtil objectWithKey:@"oauth_token"];
}
-(void)setOauth_token:(NSString *)oauth_token{
    [SCUDUtil saveObject:oauth_token key:@"oauth_token"];
}

-(NSString *)oauth_token_secret{
    return [SCUDUtil objectWithKey:@"oauth_token_secret"];
}
-(void)setOauth_token_secret:(NSString *)oauth_token_secret{
    [SCUDUtil objectWithKey:@"oauth_token_secret"];
}

-(BOOL)islogin{
    return [SCUDUtil boolWithKey:@"loginSucceed"];
}
-(void)setIslogin:(BOOL)islogin{
    [SCUDUtil saveBool:islogin key:@"loginSucceed"];
}

#pragma mark - Save Data

/**
 * 保存自定义object的方法
 *
 * @param object 参数
 * @param key 保存的key
 */
+ (void)saveCustomObject:(id)object key:(NSString *)key {
    NSData *encodedObject = [NSKeyedArchiver archivedDataWithRootObject:object];
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:encodedObject forKey:key];
    [defaults synchronize];
}

/**
 * 保存bool的方法
 *
 * @param value 参数
 * @param key 保存的key
 */
+ (void)saveBool:(BOOL)value key:(NSString*)key {
    if([key length] == 0)
        return;
    [[NSUserDefaults standardUserDefaults] setBool:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

/**
 * 保存原生object的方法
 *
 * @param value 参数
 * @param key 保存的key
 */
+ (void)saveObject:(id)value key:(NSString *)key {
    if(value == nil)
        return;
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:key];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

#pragma mark - Read Data

+ (BOOL)boolWithKey:(NSString *)key {
    if([key length] == 0)
        return NO;
    return [[NSUserDefaults standardUserDefaults] boolForKey:key];
}

+ (id)objectWithKey:(NSString *)key {
    if([key length] == 0)
        return nil;
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

+ (id)customObjectWithKey:(NSString *)key {
    if([key length] == 0)
        return nil;
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSData *encodedObject = [defaults objectForKey:key];
    if(encodedObject == nil)
        return nil;
    id object = [NSKeyedUnarchiver unarchiveObjectWithData:encodedObject];
    return object;
}

#pragma mark - Other

+ (void)emptyDefaultWithKey:(NSString *)key {
    if([key length] == 0)
        return;
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:key];
}

@end
