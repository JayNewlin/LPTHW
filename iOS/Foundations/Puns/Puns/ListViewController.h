//
//  ListViewController.h
//  Puns
//
//  Created by Amit Bijlani on 12/13/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"

@interface ListViewController : UITableViewController <DetailViewControllerDelegate>


@property (nonatomic, strong) NSMutableArray *punsArray;

@end
