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
    
        
}




- (void)viewDidUnload
{
    [self setFromLabel:nil];
    [self setToLabel:nil];
    [super viewDidUnload];
    

    
}




- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
