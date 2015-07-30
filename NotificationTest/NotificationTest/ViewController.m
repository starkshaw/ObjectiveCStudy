//
//  ViewController.m
//  NotificationTest
//
//  Created by Zhenbang Xiao on 30/07/2015.
//  Copyright © 2015 Zhenbang Xiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"View loaded.");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)touchButton:(UIButton *)sender {
    NSLog(@"Touch down.");
    UILocalNotification *notification=[[UILocalNotification alloc] init];
    if (notification!=nil) {
        NSLog(@">> support local notification");
        NSDate *now=[NSDate new];
        notification.fireDate=[now dateByAddingTimeInterval:10];
        notification.timeZone=[NSTimeZone defaultTimeZone];
        NSLog(@"Notification scheduled. It will pop out after 10 seconds when the app quits.");
    notification.alertBody=@"“They hate us because they ain’t us.”\nThe Interview";
        [[UIApplication sharedApplication]   scheduleLocalNotification:notification];
    }
}



@end
