//
//  FirstViewController.h
//  Podcaster
//
//  Created by Amit Bijlani on 2/28/12.
//  Copyright (c) 2012 Treehouse Island Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (strong, nonatomic) IBOutlet UISwitch *muteSwitch;

@property (strong, nonatomic) IBOutlet UISlider *volumeSlider;
@end
