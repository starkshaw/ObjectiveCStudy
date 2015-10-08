//
//  ViewController.m
//  OAuth Example
//
//  Created by Zhenbang Xiao on 08/10/2015.
//  Copyright © 2015 Zhenbang Xiao. All rights reserved.
//

#import "ViewController.h"
#import <Firebase/Firebase.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"background"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIVisualEffectView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    blurEffectView.frame = self.view.bounds;
    blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.view insertSubview:blurEffectView atIndex:0];
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(dismissKeyboard)];
    
    [self.view addGestureRecognizer:tap];
    [self.registerButtonOnRegView setEnabled:NO];
    [self.logInButton setEnabled:NO];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dismissKeyboard {
    [self.emailFieldForReg resignFirstResponder];
    [self.pwdAgainFieldForReg resignFirstResponder];
    [self.pwdFieldForReg resignFirstResponder];
    [self.emailField resignFirstResponder];
    [self.passwordOfEmail resignFirstResponder];
    return;
}

- (IBAction)backToMainView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    return;
}

- (IBAction)backFromRegisterView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    return;
}
- (IBAction)checkEmailFieldOnReg:(id)sender {
    if ([self.emailFieldForReg.text length] > 0 ){
        if ([self.pwdFieldForReg.text isEqualToString:self.pwdAgainFieldForReg.text] && [self.pwdFieldForReg.text length] >= 6) {
            [self.registerButtonOnRegView setEnabled:YES];
            NSLog(@"Enable REGISTER button.");
        } else {
            [self.registerButtonOnRegView setEnabled:NO];
            //NSLog(@"REGISTER button disabled.");
            //NSLog(@"Password: %@,\nConfirm Password:%@", self.pwdFieldForReg.text,self.pwdAgainFieldForReg.text);
        }
    } else {
        [self.registerButtonOnRegView setEnabled:NO];

        //NSLog(@"REGISTER button disabled.");
        //NSLog(@"Password: %@,\nConfirm Password:%@", self.pwdFieldForReg.text,self.pwdAgainFieldForReg.text);
    }
    return;
}

- (IBAction)registerButtonDown:(id)sender {
    Firebase *registerAuth = [[Firebase alloc] initWithUrl:@"https://blistering-heat-4247.firebaseio.com/"];
    [registerAuth createUser: self.emailFieldForReg.text password:self.pwdFieldForReg.text
 withValueCompletionBlock:^(NSError *error, NSDictionary *result) {
     if (error) {
         UIAlertController *creationError = [UIAlertController alertControllerWithTitle:@"Register Information" message:@"Please check your information and network then try again. Or you may already registered." preferredStyle:UIAlertControllerStyleAlert];
         UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
             
         }];
         UIAlertAction *backToMain = [UIAlertAction actionWithTitle:@"Try Log in" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
             [self dismissViewControllerAnimated:YES completion:nil];
             
         }];
         [creationError addAction:OK];
         [creationError addAction:backToMain];
         [self presentViewController:creationError animated:YES completion:nil];
     } else {
         NSString *uid = [result objectForKey:@"uid"];
         NSLog(@"Successfully created user account with uid: %@", uid);
         UIAlertController *regInfo =[UIAlertController alertControllerWithTitle:@"Register Information" message:[NSString stringWithFormat:@"You have successfully registered as %@.", self.emailFieldForReg.text] preferredStyle:UIAlertControllerStyleAlert];
         UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
             [self dismissViewControllerAnimated:YES completion:nil];
         }];
         [regInfo addAction:OK];
         [self presentViewController:regInfo animated:YES completion:nil];
     }
 }];
    return;
}

- (IBAction)checkPwdFieldOnReg:(id)sender {
    if ([self.emailFieldForReg.text length] > 0 ){
        if ([self.pwdFieldForReg.text isEqualToString:self.pwdAgainFieldForReg.text] && [self.pwdFieldForReg.text length] >= 6) {
            [self.registerButtonOnRegView setEnabled:YES];
            NSLog(@"Enable REGISTER button.");
        } else {
            [self.registerButtonOnRegView setEnabled:NO];
            //NSLog(@"REGISTER button disabled.");
            //NSLog(@"Password: %@,\nConfirm Password:%@", self.pwdFieldForReg.text,self.pwdAgainFieldForReg.text);
        }
    } else {
        [self.registerButtonOnRegView setEnabled:NO];
        //NSLog(@"REGISTER button disabled.");
        //NSLog(@"Password: %@,\nConfirm Password:%@", self.pwdFieldForReg.text,self.pwdAgainFieldForReg.text);
    }
    return;
}

- (IBAction)checkPwdAgainOnReg:(id)sender {
    if ([self.emailFieldForReg.text length] > 0 ){
        if ([self.pwdFieldForReg.text isEqualToString:self.pwdAgainFieldForReg.text] && [self.pwdFieldForReg.text length] >= 6) {
            [self.registerButtonOnRegView setEnabled:YES];
            NSLog(@"Enable REGISTER button.");
        } else {
            [self.registerButtonOnRegView setEnabled:NO];
            //NSLog(@"REGISTER button disabled.");
            //NSLog(@"Password: %@,\nConfirm Password:%@", self.pwdFieldForReg.text,self.pwdAgainFieldForReg.text);
        }
    } else {
        [self.registerButtonOnRegView setEnabled:NO];
        //NSLog(@"REGISTER button disabled.");
        //NSLog(@"Password: %@,\nConfirm Password:%@", self.pwdFieldForReg.text,self.pwdAgainFieldForReg.text);
    }
    return;
}

- (IBAction)checkEmailOnLog:(id)sender {
    if ([self.emailField.text length]>0 && [self.passwordOfEmail.text length] >= 6) {
        [self.logInButton setEnabled:YES];
        NSLog(@"Enable LOG IN button.");
    } else {
        [self.logInButton setEnabled:NO];
    }
}

- (IBAction)checkPwdOnLog:(id)sender {
    if ([self.emailField.text length]>0 && [self.passwordOfEmail.text length] >= 6) {
        [self.logInButton setEnabled:YES];
        NSLog(@"Enable LOG IN button.");
    } else {
        [self.logInButton setEnabled:NO];
    }
}

- (IBAction)logInButtonPressed:(id)sender {
    Firebase *logInAuth = [[Firebase alloc] initWithUrl:@"https://blistering-heat-4247.firebaseio.com/"];
    [logInAuth authUser:[self.emailField text] password:[self.passwordOfEmail text] withCompletionBlock:^(NSError *error, FAuthData *authData) {
        if (error) {
            UIAlertController *logFailed = [UIAlertController alertControllerWithTitle:@"Log in Information" message:@"You can’t log in at this moment, check your network and password then try again. Or you did’t registered via this Email." preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                
            }];
            UIAlertAction *backToMain = [UIAlertAction actionWithTitle:@"Back to Home" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
                [self dismissViewControllerAnimated:YES completion:nil];
            }];
            [logFailed addAction:OK];
            [logFailed addAction:backToMain];
            [self presentViewController:logFailed animated:YES completion:nil];
        } else {
            UIAlertController *logSuccessed = [UIAlertController alertControllerWithTitle:@"Log in Information" message:[NSString stringWithFormat:@"You now loged in as %@.", self.emailField.text] preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *OK = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
                
            }];
            [logSuccessed addAction:OK];
            [self presentViewController:logSuccessed animated:YES completion:nil];
        }
    }];
}

@end
