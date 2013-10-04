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

@synthesize name;
@synthesize engine;
@synthesize make;
@synthesize model;
@synthesize modelYear;
@synthesize numberOfDoors;
@synthesize mileage;

- (id) init
{
    if (self = [super init]) {
      
      self.name = @"Car";
      tires = [[NSMutableArray alloc] init];
    
      int i;
      for (i = 0; i <4; i++) {
        [tires addObject:[NSNull null]];
      }
    }

    return (self);

} // init


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

- (id) copyWithZone:(NSZone *)zone
{
  Car *carCopy;
  carCopy = [[[self class]
              allocWithZone:zone]
             init];
  
  carCopy.name = [NSString stringWithFormat:@"Copy of %@", self.name];
  carCopy.make = make;
  carCopy.model = model;
  carCopy.modelYear = modelYear;
  carCopy.numberOfDoors = numberOfDoors;
  carCopy.mileage = mileage;
  
  Engine *engineCopy;
  engineCopy = [[engine copy] autorelease];
  carCopy.engine = engineCopy;
  
  int i;
  for (i = 0; i < 4; i++) {
    Tire *tireCopy;
    
    tireCopy = [[self tireAtIndex:i] copy];
    [tireCopy autorelease];
    
    [carCopy setTire:tireCopy atIndex:i];
  }
  
  return (carCopy);
  
} // copyWithZone

- (void) print
{
  NSLog(@"%@'s details:", self.name);
  int i;
  for (i = 0; i < 4; i++) {
    NSLog(@"%@", [self tireAtIndex:i]);
  }
  
  NSLog(@"%@", engine);

} // print

- (NSString *) description {
  NSString *desc;
  desc = [NSString stringWithFormat:@"%@, a %d %@ %@, has %d doors, %.1f miles, and %d tires",
          name, modelYear, make, model, numberOfDoors, mileage, [tires count]];
  
  return desc;
} // description

@end // Car

