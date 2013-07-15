//
//  FirstViewController.m
//  Podcaster
//
//  Created by Amit Bijlani on 2/28/12.
//  Copyright (c) 2012 Treehouse Island Inc. All rights reserved.
//

#import "FirstViewController.h"

@implementation FirstViewController
@synthesize muteSwitch;
@synthesize volumeSlider;


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
  
  [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"steel-mesh.png"]]];
  

}

- (void)viewDidUnload
{
    [self setMuteSwitch:nil];
    [self setVolumeSlider:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}



- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
