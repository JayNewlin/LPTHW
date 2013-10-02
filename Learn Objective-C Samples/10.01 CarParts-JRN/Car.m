//
//  Car.m
//  06.01 CarParts-Split
//
//  Created by markd on 2/25/06.
//  Copyright 2006 __MyCompanyName__. All rights reserved.
//

#import "Car.h"
#import "Engine.h"
#import "Tire.h"

@implementation Car

- (id) init
{
    if (self = [super init]) {
      
      name = @"Car";
      tires = [[NSMutableArray alloc] init];
    
      int i;
      for (i = 0; i <4; i++) {
        [tires addObject:[NSNull null]];
      }
    }

    return (self);

} // init


- (Engine *) engine
{
    return (engine);
} // engine


- (void) setEngine: (Engine *) newEngine
{

  engine = newEngine;
  
} // setEngine


- (void) setTire: (Tire *) tire
         atIndex: (int) index
{
    [tires replaceObjectAtIndex:index
                     withObject:tire];
  
} // setTire:atIndex:


- (Tire *) tireAtIndex: (int) index
{
  Tire *tire;
  tire = [tires objectAtIndex:index];
  
  return (tire);

} // tireAtIndex:

- (void) dealloc
{
  [name release];
  [tires release];
  [engine release];
  
  [super dealloc];
} // dealloc

- (void) setName:(NSString *)newName {
  [name release];
  name = [newName copy];
} // setName

- (NSString *)name {
  return (name);
} // name

- (void) print
{
  NSLog(@"%@'s details:", name);
  int i;
  for (i = 0; i < 4; i++) {
    NSLog(@"%@", [self tireAtIndex:i]);
  }
  
  NSLog(@"%@", engine);

} // print

@end // Car

