//
//  BIDViewController.h
//  Swap
//
//  Created by Jay R Newlin on 10/9/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BIDViewController : UIViewController

@property (strong, nonatomic) IBOutlet UIView *landscape;
@property (strong, nonatomic) IBOutlet UIView *portrait;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *foos;
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *bars;

- (IBAction)buttonTapped:(id)sender;

@end
