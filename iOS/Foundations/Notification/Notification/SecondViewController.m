//
//  SecondViewController.m
//  Notification
//
//  Created by Amit Bijlani on 2/14/12.
//  Copyright (c) 2012 Treehouse Island Inc. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController
@synthesize textView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = NSLocalizedString(@"Second", @"Second");
        self.tabBarItem.image = [UIImage imageNamed:@"second"];
    }
    return self;
}
							
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
/* What is this?
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(updateTextView:) name:@"textFieldEditingEnded" object:nil];
 */
  
  
}


//- (void) updateTextView: (NSNotification *)notification {
//    self.textView.text = (NSString *)[notification object];
//    NSLog(@"%@",notification.userInfo);
//}

- (void) textFieldChanged:(NSNotification *)notification {
  NSString *text = [notification.userInfo valueForKey:@"text"];
  self.tabBarItem.badgeValue = text;
}
- (void)viewDidUnload
{
    [self setTextView:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
