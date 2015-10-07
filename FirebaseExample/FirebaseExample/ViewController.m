//
//  ViewController.m
//  FirebaseExample
//
//  Created by Zhenbang Xiao on 07/10/2015.
//  Copyright © 2015 Zhenbang Xiao. All rights reserved.
//

#import "ViewController.h"
#import <Firebase/Firebase.h>

@interface ViewController ()



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)touchSendDataToFirebase:(id)sender {
    Firebase *dataOnFirebase = [[Firebase alloc] initWithUrl:@"https://blistering-heat-4247.firebaseio.com"];
    if([self.messageField.text isEqualToString:@""]) {
        [dataOnFirebase setValue:@"Empty message."];
    } else {
        [dataOnFirebase setValue:self.messageField.text];
    }
    UIAlertController *messageSent =[UIAlertController alertControllerWithTitle:@"Message sent." message:@"Message already sent to Firebase." preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *OK = [UIAlertAction actionWithTitle:@"I got it" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
    }];
    [messageSent addAction:OK];
    [self presentViewController:messageSent animated:YES completion:nil];

    return;
}

- (IBAction)obtainDataFromFirebase:(id)sender {
    Firebase *dataOnFirebase = [[Firebase alloc] initWithUrl:@"https://blistering-heat-4247.firebaseio.com"];
    // Read data and react to changes
    [dataOnFirebase observeEventType:FEventTypeValue withBlock:^(FDataSnapshot *snapshot) {
        UIAlertController *messageFromFirebase = [UIAlertController alertControllerWithTitle:@"Message from Firebase" message:[NSString stringWithFormat:@"%@", snapshot.value] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *OK = [UIAlertAction actionWithTitle:@"I got it" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action){
        }];
        NSLog(@"%@ -> %@", snapshot.key, snapshot.value);
        [messageFromFirebase addAction:OK];
        [self presentViewController:messageFromFirebase animated:YES completion:nil];
    }];
    return;
}

@end
