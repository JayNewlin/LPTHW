//
//  DetailViewController.m
//  Puns
//
//  Created by Jay R. Newlin during Training
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController
@synthesize ratingSlider = _ratingSlider;
@synthesize textView = _textView;
@synthesize pun = _pun;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

    self.textView.text = self.pun.title;
    self.ratingSlider.value = [self.pun.rating floatValue];
   
}


- (void)viewDidUnload
{
    [self setTextView:nil];
    [self setRatingSlider:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)savePun:(id)sender {
    [self.pun setTitle:self.textView.text];
    [self.pun setRating:[NSNumber numberWithFloat:self.ratingSlider.value]];

    NSError *error = nil;
    if ( ![self.pun.managedObjectContext save:&error] ){
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
		abort();

    }
    
    if ( self.presentingViewController  )
        [self dismissModalViewControllerAnimated:YES];
    else
        [self.navigationController popViewControllerAnimated:YES];

}
@end
