//
//  LoginViewController.m
//  Ribbit
//
//  Created by Jay R Newlin on 9/3/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "LoginViewController.h"
#import <Parse/Parse.h>

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  
  [self.navigationController.navigationBar setHidden:YES];
}

- (IBAction)login:(id)sender {
  
  NSString *username = [self.usernameField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  NSString *password = [self.passwordField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
  
  if ([username length] == 0 || [password length] == 0) {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Oops!" message:@"Make sure you enter a username and password!" delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
  }
  
  else {
    [PFUser logInWithUsernameInBackground:username password:password block:^(PFUser *user, NSError *error) {
      if (error) {
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"Sorry!" message:[error.userInfo objectForKey:@"error"] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertView show];
      }
      else {
        [self.navigationController popToRootViewControllerAnimated:YES];
      }

    }];
  }


}
@end
