//
//  ViewController.m
//  CrystalBall
//
//  Created by Jay R. Newlin on 7/16/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController
@synthesize predictionArray;
@synthesize imageView;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
  
  UIImage *image = [UIImage imageNamed:@"background.png"];
  self.imageView = [[UIImageView alloc] initWithImage:image];
  [self.view insertSubview:self.imageView atIndex:0];
  
  self.imageView.animationImages = [[NSArray alloc] initWithObjects:[UIImage imageNamed:@"cball00001"],
                                    [UIImage imageNamed:@"cball00002"],
                                    [UIImage imageNamed:@"cball00003"],
                                    [UIImage imageNamed:@"cball00004"],
                                    [UIImage imageNamed:@"cball00005"],
                                    [UIImage imageNamed:@"cball00006"],
                                    [UIImage imageNamed:@"cball00007"],
                                    [UIImage imageNamed:@"cball00008"],
                                    [UIImage imageNamed:@"cball00009"],
                                    [UIImage imageNamed:@"cball00010"],
                                    [UIImage imageNamed:@"cball00011"],
                                    [UIImage imageNamed:@"cball00012"],
                                    [UIImage imageNamed:@"cball00013"],
                                    [UIImage imageNamed:@"cball00014"],
                                    [UIImage imageNamed:@"cball00015"],
                                    [UIImage imageNamed:@"cball00016"],
                                    [UIImage imageNamed:@"cball00017"],
                                    [UIImage imageNamed:@"cball00018"],
                                    [UIImage imageNamed:@"cball00019"],
                                    [UIImage imageNamed:@"cball00020"],
                                    [UIImage imageNamed:@"cball00021"],
                                    [UIImage imageNamed:@"cball00022"],
                                    [UIImage imageNamed:@"cball00023"],
                                    [UIImage imageNamed:@"cball00024"],
                                    nil ];
  self.imageView.animationDuration = 1.0;
  self.imageView.animationRepeatCount = 1;
  
  self.predictionArray = [[NSArray alloc] initWithObjects:@"It is certain",
                            @"It is decidedly so",
                            @"All signs say YES",
                            @"The stars are not aligned",
                            @"My reply is no",
                            @"It is doubtful",
                            @"Better not tell you now",
                            @"Concentrate, and ask again",
                            @"Unable to answer now",
                            @"Maybe yes",
                            nil];
  
  

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

- (void) makePrediction {
  NSUInteger index = arc4random_uniform(self.predictionArray.count);
  self.predictionLabel.text = [self.predictionArray objectAtIndex:index];
  
  [self.imageView startAnimating];
}

- (BOOL) canBecomeFirstResponder {
  return YES;
}

- (void) motionBegan:(UIEventSubtype)motion withEvent:(UIEvent *)event {
  self.predictionLabel.text = @"";
}

- (void) motionEnded:(UIEventSubtype)motion withEvent:(UIEvent *)event {
  if ( motion == UIEventSubtypeMotionShake ){
    [self makePrediction];
  }
}

- (void) motionCancelled:(UIEventSubtype)motion withEvent:(UIEvent *)event {
  NSLog(@"motion cancelled");
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
  self.predictionLabel.text = @"";
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
  [self makePrediction];
}



@end
