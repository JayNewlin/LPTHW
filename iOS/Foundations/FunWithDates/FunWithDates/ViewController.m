//
//  ViewController.m
//  FunWithDates
//
//  Created by Jay R Newlin on 7/19/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  
  NSDate *today = [NSDate date];
  NSLog(@"now: %@",today);
  
  NSTimeInterval secondsPerDay = 60 * 60 * 24;
  NSDate *tomorrow = [NSDate dateWithTimeIntervalSinceNow:secondsPerDay];
  NSLog(@"tomorrow: %@",tomorrow);
  
  NSDate *yesterday = [NSDate dateWithTimeIntervalSinceNow:-secondsPerDay];
  NSLog(@"yesterday: %@",yesterday);
  
  NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
  [dateFormatter setDateFormat:@"EE MMM dd"];
  NSString *todayString = [dateFormatter stringFromDate:today];
  NSLog(@"formatted today %@", todayString);

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
