//
//  THViewController.m
//  Crystal Ball 7
//
//  Created by Jay R Newlin on 10/17/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "THViewController.h"

@interface THViewController ()

@end

@implementation THViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	 
}

- (void) viewDidAppear:(BOOL)animated {
  
  [super viewDidAppear:animated];
  
  CGRect frame = self.predictionLabel.frame;
  self.predictionLabel.frame = CGRectMake(frame.origin.x, 200, frame.size.width, frame.size.height);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
  
  self.predictionLabel.text = @"YES";
  
}
@end
