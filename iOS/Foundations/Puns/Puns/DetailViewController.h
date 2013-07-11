//
//  DetailViewController.h
//  Puns
//
//  Created by Amit Bijlani on 12/15/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pun.h"


@interface DetailViewController : UITableViewController



@property (strong, nonatomic) IBOutlet UISlider *ratingSlider;
@property (strong, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) Pun *pun;
- (IBAction)savePun:(id)sender;

@end



