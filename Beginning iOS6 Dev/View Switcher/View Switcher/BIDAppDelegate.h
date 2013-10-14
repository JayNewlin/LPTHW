//
//  BIDAppDelegate.h
//  View Switcher
//
//  Created by Jay R Newlin on 10/14/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BIDSwitchViewController;

@interface BIDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) BIDSwitchViewController *switchViewController;

@end
