//
//  ViewController.h
//  Web
//
//  Created by Jay R Newlin on 7/2/13.
//  Copyright (c) 2013 DmgCtrl Learning. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIWebViewDelegate>
@property (strong, nonatomic) IBOutlet UIWebView *webView;
- (IBAction)buttonPressed:(id)sender;

@end
