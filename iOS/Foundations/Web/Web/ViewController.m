//
//  ViewController.m
//  Web
//
//  Created by Jay R Newlin on 7/2/13.
//  Copyright (c) 2013 DmgCtrl Learning. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
  NSString *path = [[NSBundle mainBundle] pathForResource:@"info" ofType:@"html"];
  NSString *content = [NSString stringWithContentsOfFile:path encoding:NSASCIIStringEncoding error:nil];
  NSURL *baseURL = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
  
  [self.webView loadHTMLString:content baseURL:baseURL];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
