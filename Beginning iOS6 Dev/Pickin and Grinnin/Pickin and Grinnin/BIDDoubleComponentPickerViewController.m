//
//  BIDDoubleComponentPickerViewController.m
//  Pickin and Grinnin
//
//  Created by Jay R Newlin on 10/15/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDDoubleComponentPickerViewController.h"

@interface BIDDoubleComponentPickerViewController ()

@end

@implementation BIDDoubleComponentPickerViewController

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
  
  self.fillingTypes = @[@"Ham", @"Turkey", @"Peanut Butter", @"Tuna Salad", @"Egg Salad", @"Roast Beast", @"Vegemite", @"Salami", @"Pastrami", @"Bologna", @"Liverwurst"];
  self.breadTypes = @[@"White", @"Whole Wheat", @"Rye", @"Pumpernickel", @"Sourdough", @"7 Grain", @"Kaiser"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed
{
  NSInteger fillingRow = [self.doublePicker selectedRowInComponent:kFillingComponent];
  NSInteger breadRow = [self.doublePicker selectedRowInComponent:kBreadComponent];
  
  NSString *filling = self.fillingTypes[fillingRow];
  NSString *bread = self.breadTypes[breadRow];
  
  NSString *message = [[NSString alloc] initWithFormat:@"Your %@ on %@ will be right up.", filling, bread];
  
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Thank you for your order!"
                                                  message:message
                                                 delegate:nil
                                        cancelButtonTitle:@"Great!"
                                        otherButtonTitles:nil];
  
  [alert show];
}

#pragma mark - Picker Data Source Methods

- (NSInteger) numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
  return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
  if (component == kBreadComponent) {
    return [self.breadTypes count];
  } else {
    return [self.fillingTypes count];
  }
}

#pragma mark Picker Delegate Methods

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
  if (component == kBreadComponent) {
    return self.breadTypes[row];
  } else {
    return self.fillingTypes[row];
  }
}

@end
