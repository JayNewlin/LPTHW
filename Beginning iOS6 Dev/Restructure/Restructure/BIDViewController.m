//
//  BIDViewController.m
//  Restructure
//
//  Created by Jay R Newlin on 10/9/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	UIApplication *app = [UIApplication sharedApplication];
  UIInterfaceOrientation currentOrientation = app.statusBarOrientation;
  [self doLayoutForOrientation:currentOrientation];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration {
  [self doLayoutForOrientation:toInterfaceOrientation];
}

- (void)doLayoutForOrientation:(UIInterfaceOrientation)orientation {
  if (UIInterfaceOrientationIsPortrait(orientation)) {
    _bigButton.frame = CGRectMake(20, 20, 280, 280);
    _actionButton1.frame = CGRectMake(20, 320, 120, 40);
    _actionButton2.frame = CGRectMake(20, 400, 120, 40);
    _actionButton3.frame = CGRectMake(180, 320, 120, 40);
    _actionButton4.frame = CGRectMake(180, 400, 120, 40);
  } else {
    _bigButton.frame = CGRectMake(20, 20, 260, 260);
    _actionButton1.frame = CGRectMake(320, 20, 120, 40);
    _actionButton2.frame = CGRectMake(320, 90, 120, 40);
    _actionButton3.frame = CGRectMake(320, 160, 120, 40);
    _actionButton4.frame = CGRectMake(320, 230, 120, 40);
  }
  
}

@end
