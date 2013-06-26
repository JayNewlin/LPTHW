//
//  DetailViewController.h
//  Storyboard
//
//  Created by Jay R Newlin on 6/26/13.
//  Copyright (c) 2013 DmgCtrl Learning. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
