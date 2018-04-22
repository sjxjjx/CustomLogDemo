//
//  CutomLogManager.h
//  CustomLogDemo
//
//  Created by shapp on 2018/4/13.
//  Copyright © 2018年 shapp. All rights reserved.
//

#define SecondMethodLog(format,...)  [CutomLogManager customLogWithFunction:__FUNCTION__ lineNumber:__LINE__ formatString:[NSString stringWithFormat:format, ##__VA_ARGS__]]

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CutomLogManager : NSObject

// 设置日志输出状态
+ (void)setLogEnable:(BOOL)enable;

// 获取日志输出状态
+ (BOOL)getLogEnable;

// 日志输出方法
+ (void)customLogWithFunction:(const char *)function lineNumber:(int)lineNumber formatString:(NSString *)formatString;

@end
