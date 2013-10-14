//
//  BIDViewController.m
//  Swap
//
//  Created by Jay R Newlin on 10/9/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDViewController.h"

#define degreesToRadians(x) (M_PI * (x) / 180.0)

@interface BIDViewController ()

@end

@implementation BIDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonTapped:(id)sender {
// Simple message method, prior to middle of pg. 137
//  NSString *message = nil;
//  
//  if ([self.foos containsObject:sender])
//    message = @"Foo button pressed";
//  else
//    message = @"Bar button pressed";
//  
//  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:message
//                                                  message:nil
//                                                 delegate:nil
//                                        cancelButtonTitle:@"OK"
//                                        otherButtonTitles:nil];
//  [alert show];
  
  if ([self.foos containsObject:sender]) {
    for (UIButton *oneFoo in self.foos) {
      oneFoo.hidden = YES;
    }
  }
  else {
    for (UIButton *oneBar in self.bars) {
      oneBar.hidden = YES;
    }
  }
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation duration:(NSTimeInterval)duration {
  
  if (interfaceOrientation == UIInterfaceOrientationPortrait) {
    self.view = self.portrait;
    self.view.transform = CGAffineTransformIdentity;
    self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(0));
    self.view.bounds = CGRectMake(0.0, 0.0, 320.0, 460.0);
  }
  else if (interfaceOrientation == UIInterfaceOrientationMaskLandscapeLeft) {
    self.view = self.landscape;
    self.view.transform = CGAffineTransformIdentity;
    self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(-90));
    self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
  }
  else if (interfaceOrientation == UIInterfaceOrientationLandscapeRight) {
    self.view = self.landscape;
    self.view.transform = CGAffineTransformIdentity;
    self.view.transform = CGAffineTransformMakeRotation(degreesToRadians(90));
    self.view.bounds = CGRectMake(0.0, 0.0, 480.0, 300.0);
  }
}
@end
