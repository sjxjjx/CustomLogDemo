//
//  FirstMethodViewController.m
//  CustomLogDemo
//
//  Created by shapp on 2018/4/16.
//  Copyright © 2018年 shapp. All rights reserved.
//

#import "FirstMethodViewController.h"
#import "AlertManager.h"

@interface FirstMethodViewController ()

@property (weak, nonatomic) IBOutlet UISwitch *logSwitch;
@property (weak, nonatomic) IBOutlet UITextView *logTextView;

@end

@implementation FirstMethodViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 界面显示
    BOOL isEable = [[[NSUserDefaults standardUserDefaults] valueForKey:@"kLogEnable"] boolValue];
    self.logSwitch.on = isEable;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

// 日志输出状态修改
- (IBAction)logEnableChange:(UISwitch *)s {
    NSUserDefaults *userD = [NSUserDefaults standardUserDefaults];
    [userD setValue:@(s.isOn) forKey:@"kLogEnable"];
    [userD synchronize];
}

- (IBAction)logPrintClick:(id)sender {
    FirstMethodLog(@"%@", self.logTextView.text);
    
    NSString *message = [NSString string];
    BOOL isEable = [[[NSUserDefaults standardUserDefaults] valueForKey:@"kLogEnable"] boolValue];
    if (isEable) {
        message = [NSString stringWithFormat:@"%@", self.logTextView.text];
    } else {
        message = @"关闭了输出日志功能";
    }
    [AlertManager alertLog:message];
}

@end
