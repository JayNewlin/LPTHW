#import "Tire.h"


@implementation Tire

- (id) init
{
  if (self = [super init]) {
    pressure = 34.0;
    treadDepth = 20.0;
  }
  return (self);
  
} // init

- (id) initWithPressure:(float) p
             treadDepth:(float) td
{
  if (self = [super init]) {
    pressure = p;
    treadDepth = td;
  }
  
  return (self);
  
} // initWithPressure:treadDepth:

- (void) setPressure:(float)p
{
  pressure = p;
  
} // setPressure

- (float) pressure
{
  return (pressure);
  
} // pressure

- (void) setTreadDepth:(float)td
{
  treadDepth = td;
  
} //setTreadDepth

- (float) treadDepth
{
  return (treadDepth);
  
} //treadDepth

- (NSString *) description
{
  NSString *desc;
  desc = [NSString stringWithFormat:@"Tire Pressure: %.1f, Tread Depth: %.1f", pressure, treadDepth];
  return (desc);
  
} // description

@end // Tire

