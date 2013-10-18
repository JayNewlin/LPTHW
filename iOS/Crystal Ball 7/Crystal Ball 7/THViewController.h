//
//  THViewController.h
//  Crystal Ball 7
//
//  Created by Jay R Newlin on 10/17/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface THViewController : UIViewController

@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;
@property (strong, nonatomic) NSArray *predictions;

- (IBAction)buttonPressed;

@end
