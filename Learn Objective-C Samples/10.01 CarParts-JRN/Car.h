#import <Cocoa/Cocoa.h>

@class Tire;
@class Engine;

@interface Car : NSObject <NSCopying>
{
  NSString *appellation;
  NSMutableArray *tires;
    Engine *engine;
}

@property (copy) NSString *name;
@property (retain) Engine *engine;

- (void) setTire: (Tire *) tire
         atIndex: (int) index;
- (Tire *) tireAtIndex: (int) index;

- (void) print;

@end // Car
