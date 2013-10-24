//
//  BIDTableViewController.m
//  Learning Sections
//
//  Created by Jay R Newlin on 10/24/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDTableViewController.h"

@interface BIDTableViewController ()

@end

@implementation BIDTableViewController

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
  
  [UIApplication sharedApplication].statusBarHidden = YES;
  
  UITableView *tableView = (id)[self.view viewWithTag:1];
  [tableView registerClass:[UITableViewCell class]
    forCellReuseIdentifier:@"Cell"];
  
  NSString *path = [[NSBundle mainBundle] pathForResource:@"sortednames" ofType:@"plist"];
  self.names = [NSDictionary dictionaryWithContentsOfFile:path];
  
  self.keys = [[self.names allKeys] sortedArrayUsingSelector:@selector(compare:)]
  ;
   }

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return [self.keys count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  NSString *key = self.keys[section];
  NSArray *nameSection = self.names[key];
  return [nameSection count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
  NSString *key = self.keys[indexPath.section];
  NSArray *nameSection = self.names[key];
  
  cell.textLabel.text = nameSection[indexPath.row];
  
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
  return self.keys[section];
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
  return self.keys;
}

@end
