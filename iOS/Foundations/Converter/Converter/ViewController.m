//
//  ViewController.m
//  Converter
//
//  Created by Amit Bijlani on 3/7/12.
//  Copyright (c) 2012 Treehouse Island Inc. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize fromLabel;
@synthesize toLabel;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
  [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateSettings:) name:NSUserDefaultsDidChangeNotification object:nil];
  [self setupDefaults];
  
    
        
}

- (void) updateSettings:(NSNotification *)notif{
  NSUserDefaults *defaults= [NSUserDefaults standardUserDefaults];
  self.fromLabel.text = [defaults objectForKey:kFromCurrency];
  self.toLabel.text = [defaults valueForKey:kToCurrency];
}

- (void) setupDefaults {
  NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
  
  NSString *testValue = [defaults stringForKey:kFromCurrency];
  
  if (testValue == nil ) {
    NSString *pathStr = [[NSBundle mainBundle] bundlePath];
    NSString *settingsBundlePath = [pathStr stringByAppendingPathComponent:@"Settings.bundle"];
    NSString *finalPath = [settingsBundlePath stringByAppendingPathComponent:@"Root.plist"];
    
    NSDictionary *settingsDictionary = [NSDictionary dictionaryWithContentsOfFile:finalPath];
    NSArray *prefSpecifierArray = [settingsDictionary objectForKey:@"PreferenceSpecifiers"];
    
    NSString *fromValue, *toValue;
    
    NSDictionary *prefItem;
    
    for (prefItem in prefSpecifierArray) {
      NSString *keyValue = [prefItem objectForKey:@"Key"];
      id defaultValue = [prefItem objectForKey:@"DefaultValue"];
      
      if ([keyValue isEqualToString:kFromCurrency])
      {
        fromValue = defaultValue;
      }
      else if ([keyValue isEqualToString:kToCurrency])
      {
        toValue = defaultValue;
      }
    
    }
    
    NSDictionary *appDefaults = [NSDictionary dictionaryWithObjectsAndKeys:
                                 fromValue, kFromCurrency,
                                 toValue, kToCurrency,
                                 nil];
    
    [defaults registerDefaults:appDefaults];
    [defaults synchronize];
    
    
    
  }
  
  self.fromLabel.text = [defaults stringForKey:kFromCurrency];
  self.toLabel.text = [defaults stringForKey:kToCurrency];
  
  
}




- (void)viewDidUnload
{
    [self setFromLabel:nil];
    [self setToLabel:nil];
    [super viewDidUnload];
  
  [[NSNotificationCenter defaultCenter] removeObserver:self name:NSUserDefaultsDidChangeNotification object:nil];
    

    
}




- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
