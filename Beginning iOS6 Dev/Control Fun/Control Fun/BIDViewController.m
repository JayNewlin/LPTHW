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

- (IBAction)switchChanged:(UISwitch *)sender {
  BOOL setting = sender.isOn;
  [self.leftSwitch setOn:setting animated:YES];
  [self.rightSwitch setOn:setting animated:YES];
}

- (IBAction)toggleControls:(UISegmentedControl *)sender {
  // 0 == switches index
  if (sender.selectedSegmentIndex == 0) {
    self.leftSwitch.hidden = NO;
    self.rightSwitch.hidden = NO;
    self.doSomethingButton.hidden = YES;
  }
  else {
    self.leftSwitch.hidden = YES;
    self.rightSwitch.hidden = YES;
    self.doSomethingButton.hidden = NO;
  }
}

- (IBAction)buttonPressed:(id)sender {
}

@end
