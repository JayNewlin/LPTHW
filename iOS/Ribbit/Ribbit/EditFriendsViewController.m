//
//  EditFriendsViewController.m
//  Ribbit
//
//  Created by Jay R Newlin on 9/4/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "EditFriendsViewController.h"


@interface EditFriendsViewController ()

@end

@implementation EditFriendsViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
  
  PFQuery *query = [PFUser query];
  [query orderByAscending:@"username"];
  [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
    if (error) {
      NSLog(@"Error: %@ %@", error, [error userInfo]);
    }
    else {
      self.allUsers = objects;
      [self.tableView reloadData];
    }
  }];
  
  self.currentUser = [PFUser currentUser];
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
    return [self.allUsers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
  PFUser *user = [self.allUsers objectAtIndex:indexPath.row];
  cell.textLabel.text = user.username;
  
  
  
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
  
  UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
  cell.accessoryType = UITableViewCellAccessoryCheckmark;
  PFRelation *friendsRelation = [self.currentUser relationforKey:@"friendsRelation"];
  PFUser *user = [self.allUsers objectAtIndex:indexPath.row];
  [friendsRelation addObject:user];
  [self.currentUser saveInBackgroundWithBlock:^(BOOL succeeded, NSError *error) {
    if (error) {
      NSLog(@"Error: %@ %@", error, [error userInfo]);
    }
  }];
}

#pragma mark - Helper methods

- (BOOL)isFriend:(PFUser *)user {
  
}

@end
