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
  NSString *path = [[NSBundle mainBundle] pathForResource:@"treehouse" ofType:@"pdf"];
  NSData *content = [NSData dataWithContentsOfFile:path];
  
  [self.webView loadData:content MIMEType:@"applicaiton/pdf" textEncodingName:@"utf-8" baseURL:nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
