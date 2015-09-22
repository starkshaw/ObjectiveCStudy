//
//  ViewController.m
//  EmbedFontExample
//
//  Created by Zhenbang Xiao on 22/09/2015.
//  Copyright © 2015 Zhenbang Xiao. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property int weight;
@property (weak, nonatomic) IBOutlet UILabel *chineseSection;
@property (weak, nonatomic) IBOutlet UILabel *englishSection;
@property (weak, nonatomic) IBOutlet UILabel *showChar;
@property (weak, nonatomic) IBOutlet UIButton *weightSwitch;
@property UIFont *NotoSansCJKscThin;
@property UIFont *NotoSansCJKscLight;
@property UIFont *NotoSansCJKscDemiLight;
@property UIFont *NotoSansCJKscRegular;
@property UIFont *NotoSansCJKscMedium;
@property UIFont *NotoSansCJKscBold;
@property UIFont *NotoSansCJKscBlack;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _weight = 1;
    _NotoSansCJKscThin = [UIFont fontWithName:@"NotoSansCJKsc-Thin" size:17.0f];
    _NotoSansCJKscLight = [UIFont fontWithName:@"NotoSansCJKsc-Light" size:17.0f];
    _NotoSansCJKscDemiLight = [UIFont fontWithName:@"NotoSansCJKsc-DemiLight" size:17.0f];
    _NotoSansCJKscRegular = [UIFont fontWithName:@"NotoSansCJKsc-Regular" size:17.0f];
    _NotoSansCJKscMedium = [UIFont fontWithName:@"NotoSansCJKsc-Medium" size:17.0f];
    _NotoSansCJKscBold = [UIFont fontWithName:@"NotoSansCJKsc-Bold" size:17.0f];
    _NotoSansCJKscBlack = [UIFont fontWithName:@"NotoSansCJKsc-Black" size:17.0f];
}
- (IBAction)switchFont:(UIButton *)sender {
    _weight++;
    if (_weight == 1) {
        [_chineseSection setFont:_NotoSansCJKscThin];
        [_showChar setFont:_NotoSansCJKscThin];
        _showChar.font = [_showChar.font fontWithSize:220.0f];
        [_englishSection setFont:_NotoSansCJKscThin];
        [_weightSwitch setTitle:@"Switch to Light" forState:UIControlStateNormal];
    } else if (_weight == 2) {
        [_chineseSection setFont:_NotoSansCJKscLight];
        [_showChar setFont:_NotoSansCJKscLight];
        _showChar.font = [_showChar.font fontWithSize:220.0f];
        [_englishSection setFont:_NotoSansCJKscLight];
        [_weightSwitch setTitle:@"Switch to DemiLight" forState:UIControlStateNormal];
    } else if (_weight == 3) {
        [_chineseSection setFont:_NotoSansCJKscDemiLight];
        [_showChar setFont:_NotoSansCJKscDemiLight];
        _showChar.font = [_showChar.font fontWithSize:220.0f];
        [_englishSection setFont:_NotoSansCJKscDemiLight];
        [_weightSwitch setTitle:@"Switch to Regular" forState:UIControlStateNormal];
    } else if (_weight == 4) {
        [_chineseSection setFont:_NotoSansCJKscRegular];
        [_showChar setFont:_NotoSansCJKscRegular];
        _showChar.font = [_showChar.font fontWithSize:220.0f];
        [_englishSection setFont:_NotoSansCJKscRegular];
        [_weightSwitch setTitle:@"Switch to Medium" forState:UIControlStateNormal];
    } else if (_weight == 5) {
        [_chineseSection setFont:_NotoSansCJKscMedium];
        [_showChar setFont:_NotoSansCJKscMedium];
        _showChar.font = [_showChar.font fontWithSize:220.0f];
        [_englishSection setFont:_NotoSansCJKscMedium];
        [_weightSwitch setTitle:@"Switch to Bold" forState:UIControlStateNormal];
    } else if (_weight == 6) {
        [_chineseSection setFont:_NotoSansCJKscBold];
        [_showChar setFont:_NotoSansCJKscBold];
        _showChar.font = [_showChar.font fontWithSize:220.0f];
        [_englishSection setFont:_NotoSansCJKscBold];
        [_weightSwitch setTitle:@"Switch to Black" forState:UIControlStateNormal];
    } else if (_weight == 7) {
        [_chineseSection setFont:_NotoSansCJKscBlack];
        [_showChar setFont:_NotoSansCJKscBlack];
        _showChar.font = [_showChar.font fontWithSize:220.0f];
        [_englishSection setFont:_NotoSansCJKscBlack];
        [_weightSwitch setTitle:@"Switch to Thin" forState:UIControlStateNormal];
        _weight = 0;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
