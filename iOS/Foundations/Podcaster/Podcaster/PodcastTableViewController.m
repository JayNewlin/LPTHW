//
//  PodcastTableViewController.m
//  Podcaster
//
//  Created by Amit Bijlani on 2/27/12.
//  Copyright (c) 2012 Treehouse. All rights reserved.
//

#import "PodcastTableViewController.h"


@implementation PodcastTableViewController

@synthesize podcasts = _podcasts;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
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

- (void)viewDidLoad
{
    [super viewDidLoad];

 
    self.podcasts = [NSArray arrayWithObjects:@"This American Life",@"Planet Money",@"Radio Lab", @"Grammar Girl", nil];
  
  UINavigationBar *navBar = self.navigationController.navigationBar;
  
  [navBar setBackgroundImage:[UIImage imageNamed:@"brushedmetal.png"] forBarMetrics:UIBarMetricsDefault];
  
  [navBar setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:BLACK_COLOR, UITextAttributeTextColor, [UIFont fontWithName:@"AmericanTypewriter" size:18], UITextAttributeFont, nil]];
  
  UIBarButtonItem *backBtn = [[UIBarButtonItem alloc] initWithTitle:nil style:UIBarButtonItemStylePlain target:nil action:NULL];
  
  [backBtn setBackButtonBackgroundImage:[[UIImage imageNamed:@"backbtn-bg.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 13, 0, 7)] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
  
  self.navigationItem.backBarButtonItem = backBtn;
    

}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    
    [self setPodcasts:nil];
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return [self.podcasts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"TableViewCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = [self.podcasts objectAtIndex:indexPath.row];
    
    return cell;
}



@end
