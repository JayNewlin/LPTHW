//
//  BIDAppDelegate.h
//  Autosize
//
//  Created by Jay R Newlin on 10/9/13.
//  Copyright (c) 2013 DmgCtrl, Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class BIDViewController;

@interface BIDAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) BIDViewController *viewController;

@end