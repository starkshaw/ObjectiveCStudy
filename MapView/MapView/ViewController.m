//
//  ViewController.m
//  MapView
//
//  Created by Zhenbang Xiao on 23/09/2015.
//  Copyright © 2015 Zhenbang Xiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated {
    CLAuthorizationStatus authStatus = [CLLocationManager authorizationStatus];
    if (authStatus == kCLAuthorizationStatusNotDetermined) {
        _locationManager = [[CLLocationManager alloc] init];
        [self.locationManager requestWhenInUseAuthorization];
    } else if (authStatus == kCLAuthorizationStatusDenied) {
        UIAlertController *authDenied = [UIAlertController alertControllerWithTitle:@"Access Denied" message:@"The Location Service is not accessable." preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *goSettings = [UIAlertAction actionWithTitle:@"Go to Settings" style: UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
            NSURL *settingsURL = [NSURL URLWithString:UIApplicationOpenSettingsURLString];
            [[UIApplication sharedApplication]openURL:settingsURL];
        }];
        UIAlertAction *cancel = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
            
        }];
        [authDenied addAction:goSettings];
        [authDenied addAction:cancel];
        [self presentViewController:authDenied animated:YES completion:nil];
    }
    //[self.locationManager startUpdatingLocation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
