//
//  ListViewController.m
//  Puns
//
//  Created by Amit Bijlani on 12/13/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import "ListViewController.h"
#import "Pun.h"
#import "PunsTableViewCell.h"

@implementation ListViewController

@synthesize punsArray = _punsArray;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}


#pragma mark - View lifecycle


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.punsArray = [[NSMutableArray alloc] initWithObjects:
                      [Pun punWithTitle:@"A successful diet is the triumph of mind over platter" rating:80], 
                      [Pun punWithTitle:@"When you dream in color, it's a pigment of your imagination"  rating:35], nil];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
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
    return [self.punsArray count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PunTableViewCell";
    
    PunsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[PunsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    Pun *pun = [self.punsArray objectAtIndex:indexPath.row];
   
    cell.punTextLabel.text = pun.title;
    cell.punRatingLabel.text = [pun.rating stringValue];
  
    
    
    return cell;
}




@end
