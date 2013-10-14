//
//  BIDSwitchViewController.m
//  View Switcher
//
//  Created by Jay R Newlin on 10/14/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDSwitchViewController.h"
#import "BIDYellowViewController.h"
#import "BIDBlueViewController.h"

@interface BIDSwitchViewController ()

@end

@implementation BIDSwitchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
  self.blueViewController = [[BIDBlueViewController alloc]
                             initWithNibName:@"BlueView" bundle:nil];
  [self.view insertSubview:self.blueViewController atIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
  
  if (self.blueViewController.view.superview == nil) {
    self.blueViewController = nil;
  } else {
    self.yellowViewController = nil;
  }
}

- (IBAction)switchViews:(id)sender {
  if (self.yellowViewController.view.superview == nil) {
    if (self.yellowViewController == nil) {
      self.yellowViewController = [[BIDYellowViewController alloc] initWithNibName:@"YellowView" bundle:nil];
    }
    [self.blueViewController.view removeFromSuperview];
    [self.view insertSubview:self.yellowViewController.view atIndex:0];
  } else {
    if (self.blueViewController == nil) {
      self.blueViewController =  [[BIDBlueViewController alloc] initWithNibName:@"BlueView" bundle:nil];
    }
    [self.yellowViewController.view removeFromSuperview];
    [self.view insertSubview:self.blueViewController.view atIndex:0];
  }
}

@end
