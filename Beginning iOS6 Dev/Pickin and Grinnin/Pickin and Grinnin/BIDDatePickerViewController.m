//
//  BIDDatePickerViewController.m
//  Pickin and Grinnin
//
//  Created by Jay R Newlin on 10/15/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDDatePickerViewController.h"

@interface BIDDatePickerViewController ()

@end

@implementation BIDDatePickerViewController

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
    // Do any additional setup after loading the view from its nib.
  NSDate *now = [NSDate date];
  [self.datePicker setDate:now animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed
{
  NSDate *selected = [self.datePicker date];
  NSString *message = [[NSString alloc] initWithFormat:@"The date and time that you selected is %@", selected];
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Date and Time Selected"
                                                  message:message
                                                 delegate:nil
                                        cancelButtonTitle:@"Yes, I did"
                                        otherButtonTitles:nil];
  [alert show];
}

@end
