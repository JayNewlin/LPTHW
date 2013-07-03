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
  self.webView.delegate = self;
}

#pragma mark Web View Delegate

- (void)webViewDidFinishLoad:(UIWebView *)webView {
  [self.webView stringByEvaluatingJavaScriptFromString:@"showAlert()"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buttonPressed:(id)sender {
  UIBarButtonItem *btn = (UIBarButtonItem *)sender;
  switch (btn.tag) {
    case 1:
      if ( [self.webView canGoBack] )
        [self.webView goBack];
      break;
      
    case 2:
      if ( [self.webView canGoForward] )
        [self.webView goForward];
      break;
      
    default:
      break;
  }
}
@end
