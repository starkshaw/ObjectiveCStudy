//
//  HelloWorld.m
//  Hello
//
//  Created by Zhenbang Xiao on 10/07/2015.
//  Copyright (c) 2015 Zhenbang Xiao. All rights reserved.
//

#import "HelloWorld.h"

@interface HelloWorld ()

@end

@implementation HelloWorld

- (void)viewDidLoad {
    [super viewDidLoad];
    label.text = [NSString stringWithFormat:@"Hello World!"];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkButton:(id)sender{
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
