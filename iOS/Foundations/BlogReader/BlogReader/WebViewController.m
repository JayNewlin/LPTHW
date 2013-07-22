//
//  WebViewController.m
//  BlogReader
//
//  Created by Jay R Newlin on 7/22/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "WebViewController.h"

@interface WebViewController ()

@end

@implementation WebViewController

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
  NSURL *url = [NSURL URLWithString:@"http://blog.teamtreehouse.com"];
  NSURLRequest *urlRequest = [NSURLRequest requestWithURL:url];
  [self.webView loadRequest:urlRequest];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
