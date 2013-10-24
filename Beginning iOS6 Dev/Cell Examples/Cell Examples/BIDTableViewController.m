//
//  BIDTableViewController.m
//  Cell Examples
//
//  Created by Jay R Newlin on 10/24/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "BIDTableViewController.h"
#import "BIDNameAndColorCell.h"

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

  self.computers = @[
                     @{@"Name" : @"MacBook", @"Color" : @"White"},
                     @{@"Name" : @"MacBook Pro", @"Color" : @"Silver"},
                     @{@"Name" : @"MacBook Air", @"Color" : @"Silver"},
                     @{@"Name" : @"iPad", @"Color" : @"Black"},
                     @{@"Name" : @"iPad Air", @"Color" : @"Gold"}];
  
  UITableView *tableView = (id)[self.view viewWithTag:1];
  [tableView registerClass:[BIDNameAndColorCell class] forCellReuseIdentifier:@"Cell"];

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
    return [self.computers count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    BIDNameAndColorCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
  NSDictionary *rowData = self.computers[indexPath.row];
  
  cell.name = rowData[@"Name"];
  cell.color = rowData[@"Color"];
  
    return cell;
}



@end
