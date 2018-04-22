//
//  SecondMethodViewController.m
//  CustomLogDemo
//
//  Created by shapp on 2018/4/16.
//  Copyright © 2018年 shapp. All rights reserved.
//

#import "SecondMethodViewController.h"
#import "CutomLogManager.h"
#import "AlertManager.h"

@interface SecondMethodViewController ()
@property (weak, nonatomic) IBOutlet UISwitch *logSwitch;
@property (weak, nonatomic) IBOutlet UITextView *logTextView;

@end

@implementation SecondMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 界面显示
    BOOL isEable = [CutomLogManager getLogEnable];
    self.logSwitch.on = isEable;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

// 日志输出状态修改
- (IBAction)logEnableChange:(UISwitch *)s {
    [CutomLogManager setLogEnable:s.isOn];
}


- (IBAction)logPrintClick:(id)sender {
    SecondMethodLog(@"%@", self.logTextView.text);
    
    NSString *message = [NSString string];
    BOOL isEable = [CutomLogManager getLogEnable];
    if (isEable) {
        message = [NSString stringWithFormat:@"%@", self.logTextView.text];
    } else {
        message = @"关闭了输出日志功能";
    }
    [AlertManager alertLog:message];
}

@end
