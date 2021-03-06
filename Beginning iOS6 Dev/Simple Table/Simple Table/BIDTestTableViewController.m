//
//  BIDTestTableViewController.m
//  Simple Table
//
//  Created by Jay R Newlin on 10/23/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDTestTableViewController.h"

@interface BIDTestTableViewController ()

@end

@implementation BIDTestTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

  self.dwarves = @[@"Sleepy",@"Sneezy",@"Bashful",@"Happy",@"Doc",@"Grumpy",@"Dopey",@"Thorin",@"Dorin",@"Nori",@"Ori",@"Balin",@"Dwalin",@"Fili",@"Kili",
                   @"Oin",@"Gloin",@"Bifur",@"Bofur",@"Bombur",@"Gimli"];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.dwarves count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
  if (cell == nil) {
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
  }
  
  UIImage *image = [UIImage imageNamed:@"star.png"];
  UIImage *highlightedImage = [UIImage imageNamed:@"star2.png"];
  
  cell.imageView.image = image;
  cell.imageView.highlightedImage = highlightedImage;
  
  cell.textLabel.text = self.dwarves[indexPath.row];
  cell.textLabel.font = [UIFont boldSystemFontOfSize:50];
  
  if (indexPath.row < 7) {
    cell.detailTextLabel.text = @"Created by the folks at Disney";
  } else {
    cell.detailTextLabel.text = @"Courtesy of Mr. Tolkien";
  }
    
    return cell;
}


#pragma mark - Table Delegate Methods

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return indexPath.row;
}

- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  if (indexPath.row == 0) {
    return nil;
  } else {
      return indexPath;
  }
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  NSString *rowValue = self.dwarves[indexPath.row];
  NSString *message = [[NSString alloc] initWithFormat:@"You selected %@", rowValue];
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Row Selected"
                                                   message:message
                                                  delegate:nil
                                         cancelButtonTitle:@"Why, yes; yes, I did!"
                                         otherButtonTitles:nil];
  [alert show];
  
  [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
  return 70;
}

@end
