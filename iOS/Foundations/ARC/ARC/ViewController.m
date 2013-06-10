//
//  ViewController.m
//  ARC
//
//  Created by Amit Bijlani on 11/30/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

@synthesize book = _book;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.book = [[Book alloc] init];
    self.book.title = @"Brave new world";
    self.book.author = @"Aldous Huxley";    

    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}



- (IBAction)buttonPressed:(id)sender {
    NSLog(@"%@",self.book);
}


@end
