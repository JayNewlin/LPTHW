//
//  ViewController.h
//  CrystalBall
//
//  Created by Amit Bijlani on 6/7/12.
//  Copyright (c) 2012 Treehouse Island Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)buttonPressed:(UIButton *)sender;
@property (strong, nonatomic) IBOutlet UILabel *predictionLabel;

@end
