#import "Engine.h"

@implementation Engine

- (id) init {
  if (self = [super init]) {
    horsepower = 145;
  }
  return (self);
} // init

- (NSString *) description
{
  NSString *description = [NSString stringWithFormat:@"I am a %d HP engine.  Vrooom!", horsepower];
  return (description);
} // description

- (id) copyWithZone:(NSZone *)zone
{
  Engine *engineCopy;
  engineCopy = [[[self class]
                 allocWithZone:zone]
                init];
  [engineCopy setValue:[NSNumber numberWithInt: horsepower]
                forKey:@"horsepower"];
  
  return (engineCopy);
  
} // copyWithZone

@end // Engine

