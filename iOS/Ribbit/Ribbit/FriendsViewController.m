//
//  FriendsViewController.m
//  Ribbit
//
//  Created by Jay R Newlin on 9/4/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "FriendsViewController.h"
#import "EditFriendsViewController.h"

@interface FriendsViewController ()

@end

@implementation FriendsViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  self.friendsRelation = [[PFUser currentUser] objectForKey:@"friendsRelation"];
  PFQuery *query = [self.friendsRelation query];
  [query orderByAscending:@"username"];
  [query findObjectsInBackgroundWithBlock:^(NSArray *objects, NSError *error) {
    if (error) {
      NSLog(@"Error: %@ %@", error, [error userInfo]);
    }
    else {
      self.friends = objects;
      [self.tableView reloadData];
    }
  }];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  if ([segue.identifier isEqualToString:@"showEditFriends"]) {
    EditFriendsViewController *viewController = (EditFriendsViewController *)segue.destinationViewController;
    viewController.friends = [NSMutableArray arrayWithArray:self.friends];
  }
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
    return [self.friends count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
  PFUser *user = [self.friends objectAtIndex:indexPath.row];
  cell.textLabel.text = user.username;
  
    return cell;
}


@end
