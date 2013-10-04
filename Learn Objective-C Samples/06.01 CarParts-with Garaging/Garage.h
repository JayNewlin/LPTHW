//
//  Garage.h
//  06.01 CarParts-Split
//
//  Created by Jay R Newlin on 10/4/13.
//
//

#import <Foundation/Foundation.h>

@class Car;

@interface Garage : NSObject {
  NSString *name;
  NSMutableArray *cars;
}

@property (copy) NSString *name;

- (void) addCar: (Car *) car;

- (void) print;

@end // Garage
