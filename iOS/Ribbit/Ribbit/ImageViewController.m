//
//  ImageViewController.m
//  Ribbit
//
//  Created by Jay R Newlin on 9/18/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	PFFile *imageFile = [self.message objectForKey:@"file"];
  NSURL *imageFileUrl = [[NSURL alloc] initWithString:imageFile.url];
  NSData *imageData = [NSData dataWithContentsOfURL:imageFileUrl];
  self.imageView.image = [UIImage imageWithData:imageData];
  NSString *senderName = [self.message objectForKey:@"senderName"];
  NSString *title = [NSString stringWithFormat:@"Sent from %@", senderName];
  self.navigationItem.title = title;
}

@end
