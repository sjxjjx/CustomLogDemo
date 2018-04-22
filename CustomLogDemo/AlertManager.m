//
//  AlertManager.m
//  CustomLogDemo
//
//  Created by shapp on 2018/4/16.
//  Copyright © 2018年 shapp. All rights reserved.
//

#import "AlertManager.h"

@implementation AlertManager

+ (void)alertLog:(NSString *)log {
    UIAlertController *alertC = [UIAlertController alertControllerWithTitle:@"输出日志" message:log preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    
    [alertC addAction:sureAction];
    
    [[UIApplication sharedApplication].keyWindow.rootViewController presentViewController:alertC animated:YES completion:nil];
}

@end
