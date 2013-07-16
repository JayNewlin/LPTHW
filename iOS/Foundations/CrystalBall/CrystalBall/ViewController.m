//
//  ViewController.m
//  CrystalBall
//
//  Created by Jay R. Newlin on 7/16/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
  [self setPredictionLabel:nil];
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


- (IBAction)buttonPressed:(UIButton *)sender {
  NSArray *predictionArray = [[NSArray alloc] initWithObjects:@"It is certain",
                     @"It is decidedly so",
                     @"All signs say YES",
                     @"The stars are not aligned",
                     @"My reply is no",
                     @"It is doubtful",
                     @"Better not tell you now",
                     @"Concentrate, and ask again",
                     @"Unable to answer now",
                     nil];
  
    self.predictionLabel.text = [predictionArray objectAtIndex:8];
}
@end
