//
//  ListViewController.h
//  Puns
//
//  Created by Amit Bijlani on 12/13/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ListViewController : UITableViewController 

@property (nonatomic, strong) NSMutableArray *punsArray;
@property (strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (strong, nonatomic) NSManagedObjectModel *managedObjectModel;

@end
