//
//  Garage.m
//  06.01 CarParts-Split
//
//  Created by Jay R Newlin on 10/4/13.
//
//

#import "Garage.h"

@implementation Garage

@synthesize name;

- (void) addCar:(Car *)car {
  if (cars == nil) {
    cars = [[NSMutableArray alloc] init];
  }
  [cars addObject:car];
} // addCar

- (void) print {
  NSLog(@"%@:", name);
  
  for (Car *car in cars) {
    NSLog(@" %@", car);
  }
} // print

@end //Car
