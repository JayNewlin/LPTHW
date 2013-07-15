//
//  AppDelegate.m
//  Podcaster
//
//  Created by Amit Bijlani on 2/28/12.
//  Copyright (c) 2012 Treehouse Island Inc. All rights reserved.
//

#import "AppDelegate.h"
#import "DetailViewController.h"

@implementation AppDelegate

@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  
  [self customizeControls];
  
    // Override point for customization after application launch.
    return YES;
}

- (void) customizeControls {
  [[UITabBar appearance] setSelectedImageTintColor:RED_COLOR];
  [[UITabBar appearance] setSelectionIndicatorImage:[[UIImage imageNamed:@"tabbar-selection.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(12, 12, 12, 12)]];
  [[UITabBar appearance] setBackgroundImage:[UIImage imageNamed:@"tabbar-bg.png"]];
  
  [[UISwitch appearance] setOnTintColor:RED_COLOR];
  [[UISlider appearance] setMinimumTrackTintColor:RED_COLOR];
  [[UISlider appearance] setMaximumTrackTintColor:[RED_COLOR colorWithAlphaComponent:0.5]];
  [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObject:RED_COLOR forKey:UITextAttributeTextColor] forState:UIControlStateSelected];

  [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"brushedmetal.png"] forBarMetrics:UIBarMetricsDefault];
  
  [[UINavigationBar appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:BLACK_COLOR, UITextAttributeTextColor, [UIFont fontWithName:@"AmericanTypewriter" size:18], UITextAttributeFont, nil]];
  
  [[UIBarButtonItem appearance] setBackButtonBackgroundImage:[[UIImage imageNamed:@"backbtn-bg.png"] resizableImageWithCapInsets:UIEdgeInsetsMake(0, 13, 0, 7)] forState:UIControlStateNormal barMetrics:UIBarMetricsDefault];
  

  [[UISwitch appearanceWhenContainedIn:[DetailViewController class], nil] setOnTintColor:BLACK_COLOR];
  
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    /*
     Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
     Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
     */
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    /*
     Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
     If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
     */
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    /*
     Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
     */
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    /*
     Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
     */
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    /*
     Called when the application is about to terminate.
     Save data if appropriate.
     See also applicationDidEnterBackground:.
     */
}

@end
