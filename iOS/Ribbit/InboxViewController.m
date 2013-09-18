//
//  InboxViewController.m
//  Ribbit
//
//  Created by Jay R Newlin on 9/3/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "InboxViewController.h"
#import "ImageViewController.h"

@interface InboxViewController ()

@end

@implementation InboxViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  
  PFUser *currentUser = [PFUser currentUser];
  if (currentUser) {
    NSLog(@"Current user: %@", currentUser.username);
  }
  else{
    [self performSegueWithIdentifier:@"showLogin" sender:self];
  }
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  
  PFQuery *query = [PFQuery queryWithClassName:@"Messages"];
  [query whereKey:@"recipientIds" equalTo:[[PFUser currentUser] objectId]];
  [query orderByDescending:@"createdAt"];
  [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
    if (error) {
      NSLog(@"Error: %@ %@", error, [error userInfo]);
    }
    else {
      // We found messages!
      self.messages = objects;
      [self.tableView reloadData];
      NSLog(@"Retrieved %d messages", [self.messages count]);
    }
  }];
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
    return [self.messages count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
  PFObject *message = [self.messages objectAtIndex:indexPath.row];
  cell.textLabel.text = [message objectForKey:@"senderName"];
  
  NSString *fileType = [message objectForKey:@"fileType"];
  if ([fileType isEqualToString:@"image"]) {
    cell.imageView.image = [UIImage imageNamed:@"icon_image"];
  }
  else {
    cell.imageView.image = [UIImage imageNamed:@"icon_video"];
  }
  
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  self.selectedMessage = [self.messages objectAtIndex:indexPath.row];
  NSString *fileType = [self.selectedMessage objectForKey:@"fileType"];
  if ([fileType isEqualToString:@"image"]) {
    [self performSegueWithIdentifier:@"showImage" sender:self];
  }
  else {
    
  }

}

- (IBAction)logout:(id)sender {
  [PFUser logOut];
  [self performSegueWithIdentifier:@"showLogin" sender:self];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"showLogin"]) {
    [segue.destinationViewController setHidesBottomBarWhenPushed:YES];
  }
  else if ([segue.identifier isEqualToString:@"showImage"]) {
    [segue.destinationViewController setHidesBottomBarWhenPushed:YES];
    ImageViewController *imageViewController = (ImageViewController *)segue.destinationViewController;
    imageViewController.message = self.selectedMessage;
  }
}

@end
