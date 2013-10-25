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

@implementation BIDTableViewController {
  NSMutableArray *filteredNames;
  UISearchDisplayController *searchController;
}

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
  
  filteredNames = [NSMutableArray array];
  UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
  tableView.tableHeaderView = searchBar;
  searchController = [[UISearchDisplayController alloc]
                      initWithSearchBar:searchBar contentsController:self];
  searchController.delegate = self;
  searchController.searchResultsDataSource = self;
  
  NSString *path = [[NSBundle mainBundle] pathForResource:@"sortednames" ofType:@"plist"];
  self.names = [NSDictionary dictionaryWithContentsOfFile:path];
  
  self.keys = [[self.names allKeys] sortedArrayUsingSelector:@selector(compare:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
  if (tableView.tag == 1) {
    return [self.keys count];
  } else {
    return 1;
  }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
  if (tableView.tag == 1) {
    NSString *key = self.keys[section];
    NSArray *nameSection = self.names[key];
    return [nameSection count];
  } else {
    return [filteredNames count];
  }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
  if (tableView.tag == 1) {
    NSString *key = self.keys[indexPath.section];
    NSArray *nameSection = self.names[key];
  
    cell.textLabel.text = nameSection[indexPath.row];
  } else {
    cell.textLabel.text = filteredNames[indexPath.row];
  }
  
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
  if (tableView.tag == 1) {
    return self.keys[section];
  } else {
    return nil;
  }
}

- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
  if (tableView.tag == 1) {
    return self.keys;
  } else {
    return nil;
  }
}

#pragma mark - Search Display Delegate Methods

- (void)searchDisplayController:(UISearchDisplayController *)controller didLoadSearchResultsTableView:(UITableView *)tableView
{
  [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
}

- (BOOL)searchDisplayController:(UISearchDisplayController *)controller shouldReloadTableForSearchString:(NSString *)searchString
{
  [filteredNames removeAllObjects];
  if (searchString.length > 0) {
    NSPredicate *predicate = [NSPredicate predicateWithBlock:^BOOL(NSString *name, NSDictionary *b)
                              {
                                NSRange range = [name rangeOfString:searchString
                                                            options:NSCaseInsensitiveSearch];
                                return range.location != NSNotFound;
                              }];
                                
                              for (NSString *key in self.keys) {
                                NSArray *matches = [self.names[key] filteredArrayUsingPredicate:predicate];
                                [filteredNames addObjectsFromArray:matches];
                              }
                            }
                            return YES;
}


@end
