//
//  BIDSingleComponentPickerViewController.m
//  Pickin and Grinnin
//
//  Created by Jay R Newlin on 10/15/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDSingleComponentPickerViewController.h"

@interface BIDSingleComponentPickerViewController ()

@end

@implementation BIDSingleComponentPickerViewController

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
  self.characterNames = @[@"Picard", @"Riker", @"Data", @"Crusher", @"Troi", @"LeForge", @"Worf", @"Yar", @"O'Brien", @"Guinan"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed
{
  NSInteger row = [self.singlePicker selectedRowInComponent:0];
  NSString *selected = self.characterNames[row];
  NSString *title = [[NSString alloc] initWithFormat:@"You selected %@", selected];
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                  message:@"Thank you for choosing."
                                                 delegate:nil
                                        cancelButtonTitle:@"You're welcome!"
                                        otherButtonTitles:nil];
  [alert show];
}

#pragma mark - Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
  return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
  return [self.characterNames count];
}

#pragma mark Picker Delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
  return self.characterNames[row];
}

@end
