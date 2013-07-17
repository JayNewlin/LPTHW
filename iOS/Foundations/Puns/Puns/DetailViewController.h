//
//  DetailViewController.h
//  Puns
//
//  Created by Jay R. Newlin during Training
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pun.h"


@interface DetailViewController : UITableViewController



@property (strong, nonatomic) IBOutlet UISlider *ratingSlider;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) Pun *pun;
- (IBAction)savePun:(id)sender;

@end



