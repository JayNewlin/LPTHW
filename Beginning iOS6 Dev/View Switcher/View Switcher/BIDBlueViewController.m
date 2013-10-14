//
//  BIDBlueViewController.m
//  View Switcher
//
//  Created by Jay R Newlin on 10/14/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDBlueViewController.h"

@interface BIDBlueViewController ()

@end

@implementation BIDBlueViewController

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
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)blueButtonPressed {
  UIAlertView *alert = [[UIAlertView alloc]
                        initWithTitle:@"Blue View Button Pressed"
                        message:@"Well, at least that's what I think you pressed."
                        delegate:nil
                        cancelButtonTitle:@"Yep, I did"
                        otherButtonTitles: nil];
  [alert show];
}

@end
