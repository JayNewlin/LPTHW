//
//  Car.h
//  05.03 CarParts-2
//
//  Created by Jay R Newlin on 8/9/13.
//
//

#import <Foundation/Foundation.h>

@class Tire;
@class Engine;

@interface Car : NSObject
{
	Engine *engine;
	Tire *tires[4];
}

- (Engine *) engine;

- (void) setEngine: (Engine *) newEngine;


- (Tire *) tireAtIndex: (int) index;

- (void) setTire: (Tire *) tire
         atIndex: (int) index;

- (void) print;

@end // Car
