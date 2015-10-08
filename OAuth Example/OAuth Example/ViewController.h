//
//  ViewController.h
//  OAuth Example
//
//  Created by Zhenbang Xiao on 08/10/2015.
//  Copyright © 2015 Zhenbang Xiao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *logInUseEmail;
@property (weak, nonatomic) IBOutlet UIButton *backToMain;
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordOfEmail;
@property (weak, nonatomic) IBOutlet UIButton *logInButton;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
@property (weak, nonatomic) IBOutlet UIButton *backFromRegToMain;
@property (weak, nonatomic) IBOutlet UITextField *emailFieldForReg;
@property (weak, nonatomic) IBOutlet UITextField *pwdFieldForReg;
@property (weak, nonatomic) IBOutlet UITextField *pwdAgainFieldForReg;
@property (weak, nonatomic) IBOutlet UIButton *registerButtonOnRegView;
@end
