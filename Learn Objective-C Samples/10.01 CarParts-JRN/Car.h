#import <Cocoa/Cocoa.h>

@class Tire;
@class Engine;

@interface Car : NSObject <NSCopying>
{
  NSString *name;
  NSMutableArray *tires;
  Engine *engine;
  
  NSString *make;
  NSString *model;
  int modelYear;
  int numberOfDoors;
  float mileage;
}

@property (copy) NSString *name;
@property (retain) Engine *engine;
@property (copy) NSString *make;
@property (copy) NSString *model;
@property int modelYear;
@property int numberOfDoors;
@property float mileage;

- (void) setTire: (Tire *) tire
         atIndex: (int) index;
- (Tire *) tireAtIndex: (int) index;

- (void) print;

@end // Car
