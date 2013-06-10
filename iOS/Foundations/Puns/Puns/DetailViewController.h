//
//  DetailViewController.h
//  Puns
//
//  Created by Amit Bijlani on 12/15/11.
//  Copyright (c) 2011 Treehouse Island Inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Pun.h"


@interface DetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (strong, nonatomic) Pun *pun;

@end



