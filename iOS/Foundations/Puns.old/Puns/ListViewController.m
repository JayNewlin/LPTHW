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
#import "DetailViewController.h"

@implementation ListViewController

@synthesize punsArray = _punsArray;
@synthesize managedObjectContext = __managedObjectContext;
@synthesize managedObjectModel = __managedObjectModel;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - Segue

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ( [[segue identifier] isEqualToString:@"ShowPun"] ){
        DetailViewController *dvc = (DetailViewController *)[segue destinationViewController];
        dvc.pun = [self.punsArray objectAtIndex:[[self.tableView indexPathForSelectedRow] row]];
    }else if ( [[segue identifier] isEqualToString:@"addPun"] ){
      DetailViewController *dvc = (DetailViewController *)[[segue destinationViewController] topViewController];
      [dvc setPun::[NSEntityDescription insertNewObjectForEntityForName:@"Pun"inManagedObjectContext:self.managedObjectContext]];
    }
}


#pragma mark - View lifecycle


- (void)viewDidLoad
{
    [super viewDidLoad];

    self.punsArray = nil;
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
