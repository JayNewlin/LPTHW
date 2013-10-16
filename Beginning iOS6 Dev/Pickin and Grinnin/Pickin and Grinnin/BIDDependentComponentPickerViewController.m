//
//  BIDDependentComponentPickerViewController.m
//  Pickin and Grinnin
//
//  Created by Jay R Newlin on 10/15/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDDependentComponentPickerViewController.h"

//@interface BIDDependentComponentPickerViewController ()
//
//@end

@implementation BIDDependentComponentPickerViewController

//- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
//{
//    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
//    if (self) {
//        // Custom initialization
//    }
//    return self;
//}

- (IBAction)buttonPressed
{
  NSInteger stateRow = [self.dependentPicker selectedRowInComponent:kStateComponent];
  NSInteger zipRow = [self.dependentPicker selectedRowInComponent:kZipComponent];
  NSString *state = self.states[stateRow];
  NSString *zip = self.zips[zipRow];
  
  NSString *title = [[NSString alloc] initWithFormat:@"You selected ZIP Code %@.", zip];
  NSString *message = [[NSString alloc] initWithFormat:@"%@ is in %@", zip, state];
  
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                  message:message
                                                 delegate:nil
                                        cancelButtonTitle:@"OK"
                                        otherButtonTitles:nil];
  [alert show];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
  
  NSBundle *bundle = [NSBundle mainBundle];
  NSURL *plistURL = [bundle URLForResource:@"statedictionary" withExtension:@"plist"];
  
  self.stateZips = [NSDictionary dictionaryWithContentsOfURL:plistURL];
  
  NSArray *allStates = [self.stateZips allKeys];
  NSArray *sortedStates = [allStates sortedArrayUsingSelector:@selector(compare:)];
  self.states = sortedStates;
  
  NSString *selectedState = self.states[0];
  self.zips = self.stateZips[selectedState];
  
  [self.dependentPicker reloadAllComponents];
  
//  NSString *logNote = [[NSString alloc] initWithFormat:@"I have %d at self.states and %d at self.zips", [self.states count], [self.zips count]];
//  NSLog(logNote);
}

#pragma mark - Picker Data Source Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
  return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
  if (component == kStateComponent) {
    return [self.states count];
  } else {
    return [self.zips count];
  }
}

#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
  if (component == kStateComponent) {
    return self.states[row];
  } else {
    return self.zips[row];
  }
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
  if (component == kStateComponent) {
    NSString *selectedState = self.states[row];
    self.zips = self.stateZips[selectedState];
    [self.dependentPicker reloadComponent:kZipComponent];
    [self.dependentPicker selectRow:0 inComponent:kZipComponent animated:YES];
  }
}

@end
