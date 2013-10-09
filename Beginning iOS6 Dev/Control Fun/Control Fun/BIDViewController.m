//
//  BIDViewController.m
//  Control Fun
//
//  Created by Jay R Newlin on 10/8/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDViewController.h"

@interface BIDViewController ()

@end

@implementation BIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.sliderLabel.text = @"50";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)textFieldDoneEditing:(id)sender {
  [sender resignFirstResponder];
}

- (IBAction)backgroundTap:(id)sender {
  [self.nameField resignFirstResponder];
  [self.numberField resignFirstResponder];
}

- (IBAction)sliderChanged:(UISlider *)sender {
  int progress = lroundf(sender.value);
  self.sliderLabel.text = [NSString stringWithFormat:@"%d", progress];
}

@end
