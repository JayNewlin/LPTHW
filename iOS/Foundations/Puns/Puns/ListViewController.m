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

@interface ListViewController ()
- (void)configureCell:(PunsTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath;

@end



@implementation ListViewController

@synthesize fetchedResultsController = __fetchedResultsController;
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
      
      NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
      Pun *pun = [[self fetchedResultsController] objectAtIndexPath:indexPath];
      [dvc setPun:pun];
      
    } else if  ([[segue identifier] isEqualToString:@"addPun"]) {
        DetailViewController *dvc = (DetailViewController *)[[segue destinationViewController] topViewController];
        [dvc setPun:[NSEntityDescription insertNewObjectForEntityForName:@"Pun" inManagedObjectContext:self.managedObjectContext]];
    }
    
}

#pragma mark - View lifecycle


- (void)viewDidLoad
{
    [super viewDidLoad];
    


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
    return [[self.fetchedResultsController sections] count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{ 
  
  id <NSFetchedResultsSectionInfo> sectionInfo = [[self.fetchedResultsController sections] objectAtIndex:section];
  
  return [sectionInfo numberOfObjects];
}

- (PunsTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"PunTableViewCell";
    
    PunsTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[PunsTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
  [self configureCell:cell atIndexPath:indexPath];
  
    return cell;
}

- (void)configureCell:(PunsTableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
  Pun *pun = [self.fetchedResultsController objectAtIndexPath:indexPath];
  cell.punTextLabel.text = pun.title;
  cell.punRatingLabel.text = [pun.rating stringValue];

}


#pragma mark - Fetched results controller

- (NSFetchedResultsController *)fetchedResultsController
{
  if (__fetchedResultsController != nil) {
    return __fetchedResultsController;
  }
  
  
  NSFetchRequest *fetchRequest = [[NSFetchRequest alloc] init];
  NSEntityDescription *entity = [NSEntityDescription entityForName:@"Pun" inManagedObjectContext:self.managedObjectContext];
  
  [fetchRequest setEntity:entity];
  
  [fetchRequest setFetchBatchSize:20];
  
  NSSortDescriptor *sortDescriptor = [[NSSortDescriptor alloc] initWithKey:@"rating" ascending:NO];
  NSArray *sortDescriptors = [NSArray arrayWithObjects:sortDescriptor, nil];
  
  [fetchRequest setSortDescriptors:sortDescriptors];
  
  NSFetchedResultsController *aFetchedResultsController = [[NSFetchedResultsController alloc] initWithFetchRequest:fetchRequest managedObjectContext:self.managedObjectContext sectionNameKeyPath:nil cacheName:@"Master"];
  aFetchedResultsController.delegate = self;
  self.fetchedResultsController = aFetchedResultsController;
  
  NSError *error = nil;
  
  if (![self.fetchedResultsController performFetch:&error]) {
  /*
   Replace this implementation with code to handle the error appropriately.
   
   abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
   */
    NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
    abort();
  }
  
  return __fetchedResultsController;
}

- (void)controllerWillChangeContent:(NSFetchedResultsController *)controller {
  [self.tableView beginUpdates];
}


- (void)controller:(NSFetchedResultsController *)controller didChangeSection:(id <NSFetchedResultsSectionInfo>)sectionInfo
           atIndex:(NSUInteger)sectionIndex forChangeType:(NSFetchedResultsChangeType)type {
  
  switch(type) {
    case NSFetchedResultsChangeInsert:
      [self.tableView insertSections:[NSIndexSet indexSetWithIndex:sectionIndex]
                    withRowAnimation:UITableViewRowAnimationFade];
      break;
      
    case NSFetchedResultsChangeDelete:
      [self.tableView deleteSections:[NSIndexSet indexSetWithIndex:sectionIndex]
                    withRowAnimation:UITableViewRowAnimationFade];
      break;
  }
}


- (void)controller:(NSFetchedResultsController *)controller didChangeObject:(id)anObject
       atIndexPath:(NSIndexPath *)indexPath forChangeType:(NSFetchedResultsChangeType)type
      newIndexPath:(NSIndexPath *)newIndexPath {
  
  UITableView *tableView = self.tableView;
  
  switch(type) {
      
    case NSFetchedResultsChangeInsert:
      [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath]
                       withRowAnimation:UITableViewRowAnimationFade];
      break;
      
    case NSFetchedResultsChangeDelete:
      [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]
                       withRowAnimation:UITableViewRowAnimationFade];
      break;
      
    case NSFetchedResultsChangeUpdate:
      [self configureCell:[tableView cellForRowAtIndexPath:indexPath]
              atIndexPath:indexPath];
      break;
      
    case NSFetchedResultsChangeMove:
      [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath]
                       withRowAnimation:UITableViewRowAnimationFade];
      [tableView insertRowsAtIndexPaths:[NSArray arrayWithObject:newIndexPath]
                       withRowAnimation:UITableViewRowAnimationFade];
      break;
  }
}


- (void)controllerDidChangeContent:(NSFetchedResultsController *)controller {
  [self.tableView endUpdates];
}



@end
