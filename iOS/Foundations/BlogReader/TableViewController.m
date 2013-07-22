//
//  TableViewController.m
//  BlogReader
//
//  Created by Jay R Newlin on 7/17/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "TableViewController.h"
#import "BlogPost.h"
#import "WebViewController.h"

@interface TableViewController ()

@end

@implementation TableViewController

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
  
  NSURL *blogURL = [NSURL URLWithString:@"http://blog.teamtreehouse.com/api/get_recent_summary/"];
  
  NSData *jsonData = [NSData dataWithContentsOfURL:blogURL];
  
  NSError *error = nil;
  
  NSDictionary *dataDictionary = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:&error];

  
  self.blogPosts = [NSMutableArray array];
  
  NSArray *blogPostsArray = [dataDictionary objectForKey:@"posts"];
  
  for (NSDictionary *bpDictionary in blogPostsArray) {
    BlogPost *blogPost = [BlogPost blogPostWithTitle:[bpDictionary objectForKey:@"title"]];
    blogPost.author = [bpDictionary objectForKey:@"author"];
    blogPost.thumbnail = [bpDictionary objectForKey:@"thumbnail"];
    blogPost.date = [bpDictionary objectForKey:@"date"];
    blogPost.url = [NSURL URLWithString:[bpDictionary objectForKey:@"url"]];
    [self.blogPosts addObject:blogPost];
  }

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
    return [self.blogPosts count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
  
  BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];

  if ( [blogPost.thumbnail isKindOfClass:[NSString class]]) {
    NSData *imageData = [NSData dataWithContentsOfURL:blogPost.thumbnailURL];
    UIImage *image = [UIImage imageWithData:imageData];
    cell.imageView.image = image;
  } else {
    cell.imageView.image = [UIImage imageNamed:@"treehouse.png"];
  }
    
  cell.textLabel.text = blogPost.title;
  cell.detailTextLabel.text = [NSString stringWithFormat:@"By %@ on %@",blogPost.author, [blogPost formattedDate]];
    return cell;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
  
  if ( [segue.identifier isEqualToString:@"showBlogPost"]){
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    BlogPost *blogPost = [self.blogPosts objectAtIndex:indexPath.row];
    
    [segue.destinationViewController setBlogPostURL:blogPost.url];
  }
}
















@end
