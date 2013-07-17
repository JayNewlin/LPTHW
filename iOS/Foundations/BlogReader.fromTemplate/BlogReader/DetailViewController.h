//
//  DetailViewController.h
//  BlogReader
//
//  Created by Jay R Newlin on 7/17/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
