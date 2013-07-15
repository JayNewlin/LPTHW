//
//  AppDelegate.m
//  Blocks
//
//  Created by Jay R Newlin on 7/15/13.
//  Copyright (c) 2013 DmgCtrl Learning. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
  
  float inches = 12;
  
  typedef double (^unit_conversion_t)(float);
  
  unit_conversion_t inchesToCms = ^(float i){
    return inches * 2.54;
  };
  
  unit_conversion_t inchesToFt = ^(float i){
    return i/12.00;
  };
  
  unit_conversion_t inchesToYards = ^(float i){
    return i/36.00;
  };
  
  NSDictionary *dictionary = [NSDictionary dictionaryWithObjectsAndKeys:inchesToCms, @"inchesToCms", inchesToFt, @"inchesToFt", inchesToYards, @"inchesToYards", nil];
  
  [dictionary enumerateKeysAndObjectsUsingBlock:^(id key, id val, BOOL *stop) {
    unit_conversion_t conversionBlock = val;
    NSLog(@"%@ - %1.2f",key,conversionBlock(inches));
  }];
  
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
