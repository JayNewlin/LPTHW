//
//  DetailViewController.m
//  Puns
//
//  Created by Amit Bijlani on 12/15/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import "DetailViewController.h"

@implementation DetailViewController
@synthesize textView = _textView;
@synthesize pun = _pun;
@synthesize delegate = _delegate;

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

- (void) viewDidLoad {
  [super viewDidLoad];
  
  if ( !self.pun )
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(addNewPun)];
}


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];

  if (self.pun ) {
    self.textView.text = self.pun.title;
    self.ratingSlider.value = [self.pun.rating floatValue];
  }
  
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
  if ( [self.pun.managedObjectContext save:&error] ){
    NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    abort();
    
  }
  
  [self.dismissModalViewControllerAnimated:YES];
  
}
@end
