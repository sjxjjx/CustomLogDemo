//
//  CutomLogManager.m
//  CustomLogDemo
//
//  Created by shapp on 2018/4/13.
//  Copyright © 2018年 shapp. All rights reserved.
//

#import "CutomLogManager.h"

// 默认值为NO
static BOOL kLogEnable = NO;

@implementation CutomLogManager

+ (void)setLogEnable:(BOOL)enable {
    kLogEnable = enable;
}

+ (BOOL)getLogEnable {
    return kLogEnable;
}

+ (void)customLogWithFunction:(const char *)function lineNumber:(int)lineNumber formatString:(NSString *)formatString {
    
    if ([self getLogEnable]) {
        // 开启了Log
        NSLog(@"%s[%d]%@", function, lineNumber, formatString);
    }
}

@end
