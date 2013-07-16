//
//  ViewController.h
//  CrystalBall
//
//  Created by Jay R. Newlin on 7/16/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)buttonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;

@end
