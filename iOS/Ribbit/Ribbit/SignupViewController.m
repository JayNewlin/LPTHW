//
//  SignupViewController.m
//  Ribbit
//
//  Created by Jay R Newlin on 9/3/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "SignupViewController.h"

@interface SignupViewController ()

@end

@implementation SignupViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)signup:(id)sender {
  NSString *username = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  NSString *email = [self.emailField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  
  if ([username length] == 0 || [password length] == 0 || [email length] == 0) {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops!" message:@"Make sure you enter a username, password, and email address!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
  }
}
@end
