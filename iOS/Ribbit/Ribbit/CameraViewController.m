//
//  CameraViewController.m
//  Ribbit
//
//  Created by Jay R Newlin on 9/13/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "CameraViewController.h"
#import <MobileCoreServices/UTCoreTypes.h>

@interface CameraViewController ()

@end

@implementation CameraViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
  self.friendsRelation = [[PFUser currentUser] objectForKey:@"friendsRelation"];
  self.recipients = [[NSMutableArray alloc] init];
}

- (void)viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
  
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

  self.imagePicker = [[UIImagePickerController alloc] init];
  self.imagePicker.delegate = self;
  self.imagePicker.allowsEditing = NO;
  self.imagePicker.videoMaximumDuration = 10;
  
  if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
    self.imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
  }
  else {
    self.imagePicker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
  }
  self.imagePicker.mediaTypes = [UIImagePickerController availableMediaTypesForSourceType:self.imagePicker.sourceType];
  
  [self presentViewController:self.imagePicker animated:NO completion:nil];
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
  
  if ([self.recipients containsObject:user.objectId]) {
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
  }
  else {
    cell.accessoryType = UITableViewCellAccessoryNone;
  }

    
    return cell;
}


#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
  [self.tableView deselectRowAtIndexPath:indexPath animated:NO];
  
  UITableViewCell *cell = [self.tableView cellForRowAtIndexPath:indexPath];
  PFUser *user = [self.friends objectAtIndex:indexPath.row];
  
  if (cell.accessoryType == UITableViewCellAccessoryNone) {
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    [self.recipients addObject:user.objectId];
  }
  else {
    cell.accessoryType = UITableViewCellAccessoryNone;
    [self.recipients removeObject:user.objectId];
  }
}

#pragma mark - Image Picker Controller delegate

- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
  [self dismissViewControllerAnimated:NO completion:nil];
  
  [self.tabBarController setSelectedIndex:0];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
  NSString *mediaType = [info objectForKey:UIImagePickerControllerMediaType];
  if ([mediaType isEqualToString:(NSString *)kUTTypeImage]) {
    // photo taken or selected!
    self.image = [info objectForKey:UIImagePickerControllerOriginalImage];
    if (self.imagePicker.sourceType == UIImagePickerControllerSourceTypeCamera) {
      // save the image!
      UIImageWriteToSavedPhotosAlbum(self.image, nil, nil, nil);
    }
  }
  else {
    // video taken or selected
    self.videoFilePath = [[info objectForKey:UIImagePickerControllerMediaURL] path];
    if (self.imagePicker.sourceType == UIImagePickerControllerSourceTypeCamera) {
      // save the video!
   
      if (UIVideoAtPathIsCompatibleWithSavedPhotosAlbum(self.videoFilePath)) {
        UISaveVideoAtPathToSavedPhotosAlbum(self.videoFilePath, nil, nil, nil);
      }
    }
  }
  [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - IBActions

- (IBAction)cancel:(id)sender {
  self.image = nil;
  self.videoFilePath = nil;
  [self.recipients removeAllObjects];
  [self.tabBarController setSelectedIndex:0];
}
@end
