#import "Engine.h"

@implementation Engine

- (NSString *) description
{
    return (@"I am an engine.  Vrooom!");
} // description

- (id) copyWithZone:(NSZone *)zone
{
  Engine *engineCopy;
  engineCopy = [[[self class]
                 allocWithZone:zone]
                init];
  
  return (engineCopy);
  
} // copyWithZone

@end // Engine

