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
    cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
  }
  
  UIImage *image = [UIImage imageNamed:@"star.png"];
  UIImage *highlightedImage = [UIImage imageNamed:@"star2.png"];
  
  cell.imageView.image = image;
  cell.imageView.highlightedImage = highlightedImage;
  
  cell.textLabel.text = self.dwarves[indexPath.row];
    
    return cell;
}

@end
