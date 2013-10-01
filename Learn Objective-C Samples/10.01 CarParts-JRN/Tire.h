#import <Cocoa/Cocoa.h>

@interface Tire : NSObject
{
  float pressure;
  float treadDepth;
}

- (void)setPressure: (float) pressure;
- (float) pressure;

- (void) setTreadDepth: (float) treadDepth;
- (float) treadDepth;

@end // Tire
