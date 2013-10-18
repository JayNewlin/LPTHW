//
//  THViewController.m
//  Crystal Ball 7
//
//  Created by Jay R Newlin on 10/17/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "THViewController.h"
#import "THCrystalBall.h"

@interface THViewController ()

@end

@implementation THViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  
  self.crystalBall = [[THCrystalBall alloc] init];
  
  UIImage *backgroundImage = [UIImage imageNamed:@"background"];
  UIImageView *imageView = [[UIImageView alloc] initWithImage:backgroundImage];
  [self.view insertSubview:imageView atIndex:0];
  
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed {
  
  self.predictionLabel.text = [self.crystalBall randomPrediction];
  
}
@end
