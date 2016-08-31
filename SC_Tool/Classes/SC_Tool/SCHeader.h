//
//  SCHeader.h
//  SC_Tool
//
//  Created by 段帅 on 16/8/29.
//  Copyright © 2016年 段帅. All rights reserved.
//

#ifndef SCHeader_h
#define SCHeader_h

#define SIZEWIDTH   [[UIScreen mainScreen] bounds].size.width
#define SIZEHEIGHT  [[UIScreen mainScreen] bounds].size.height
#define Bili 0.383*SCALE6P
#define SCALE6P (SIZEWIDTH/414)
#define NormalFont(A) [UIFont systemFontOfSize:A/3]
#define Color999999 [UIColor colorWithRed:153.0/255 green:153.0/255 blue:153.0/255 alpha:1.0f]
#define color666666 [UIColor colorWithRed:102.0/255 green:102.0/255 blue:102.0/255 alpha:1.0f]
#define Color333333 [UIColor colorWithRed:51.0/255 green:51.0/255 blue:51.0/255 alpha:1.0f]
#define colordbdbdb [UIColor colorWithRed:219.0/255 green:219.0/255 blue:219.0/255 alpha:1.0f]
#define BGC  [UIColor colorWithRed:245.0/255 green:245.0/255 blue:245.0/255 alpha:1.0f]

#define ScaleSize(A) 0.383*A
/**
 
 带RGBA的颜色值
 
 */
#define COLOR(R, G, B, A)  [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
/**
 *灰色字
 */


#define COLOR_TITLE_A5A5A5 [UIColor colorWithRed:165/255.0 green:165/255.0 blue:165/255.0 alpha:1]
#define COLOR_TITLE_999999 [UIColor colorWithRed:153/255.0 green:153/255.0 blue:153/255.0 alpha:1]

#import <objc/runtime.h>

//#import "AFNetworking.h"
//#import "Masonry.h"
//#import "SCUserUtil.h"
//#import "SCAPI.h"
//#import "SCUDUtil.h"
//#import "CommonFunction.h"
//#import "UIColor+Kit.h"
//#import "NSObject+SCRequest.h"
//#import "UILabel+SCAdd.h"
//#import "SDImageCache.h"
//#import "UIImageView+WebCache.h"
//#import "MJRefresh.h"
//#import "MJExtension.h"

#pragma mark ----------验证是否是初次进入软件------------

#define kIsFirstTimeLogin @"isFirstTimeLogin"





#endif /* SCHeader_h */
